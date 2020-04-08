package pl.iordervivi.data.scrapper.gov.covid19.service;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.CsvSource;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import pl.iordervivi.data.scrapper.gov.covid19.domain.DiseaseStatisticInRegion;
import pl.iordervivi.data.scrapper.gov.covid19.domain.Region;
import pl.iordervivi.data.scrapper.gov.covid19.dto.DiseaseStatisticInRegionDto;
import pl.iordervivi.data.scrapper.gov.covid19.repo.DiseaseStatisticInRegionRepository;
import pl.iordervivi.data.scrapper.gov.covid19.repo.RegionRepository;

import java.util.Optional;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.Mockito.when;
import static org.mockito.MockitoAnnotations.initMocks;

class DiseaseStatisticInRegionServiceTest {

    @InjectMocks
    private DiseaseStatisticInRegionService diseaseStatisticInRegionService;

    @Mock
    private DiseaseStatisticInRegionRepository diseaseStatisticInRegionRepository;

    @Mock
    private RegionRepository regionRepository;

    @BeforeEach
    void setUp() {
        initMocks(this);
    }

    @Test
    void testNoDataAboutStepsInRepositoryGetCurrentStepExpectedOne() {
        //given
        when(diseaseStatisticInRegionRepository.findTopByOrderByTimeStepDesc()).thenReturn(Optional.empty());
        //when
        long step = diseaseStatisticInRegionService.getCurrentStep();
        //then
        assertEquals(1L, step);
    }

    @Test
    void testFirstStepInRepositoryGetCurrentStepExpectedTwo() {
        //given
        DiseaseStatisticInRegion diseaseStatisticInRegion = new DiseaseStatisticInRegion();
        diseaseStatisticInRegion.setTimeStep(1);
        when(diseaseStatisticInRegionRepository.findTopByOrderByTimeStepDesc())
                .thenReturn(Optional.of(diseaseStatisticInRegion));
        //when
        long step = diseaseStatisticInRegionService.getCurrentStep();
        //then
        assertEquals(2L, step);
    }

    @Test
    void testNullInputDtoIfSameDataInPreviousStepExpectedIllegalArgumentException() {
        //given
        DiseaseStatisticInRegionDto totalDiseaseStatisticInRegionDto = new DiseaseStatisticInRegionDto();
        when(regionRepository.findByRegion("Cała Polska")).thenReturn(Optional.empty());
        //when
        //then
        Assertions.assertThrows(IllegalArgumentException.class,
                () -> diseaseStatisticInRegionService.ifSameDataInPreviousStep(null,
                        1L));
    }

    @Test
    void testZeroStepIfSameDataInPreviousStepExpectedIllegalArgumentException() {
        //given
        DiseaseStatisticInRegionDto totalDiseaseStatisticInRegionDto = new DiseaseStatisticInRegionDto();
        when(regionRepository.findByRegion("Cała Polska")).thenReturn(Optional.empty());
        //when
        //then
        Assertions.assertThrows(IllegalArgumentException.class,
                () -> diseaseStatisticInRegionService.ifSameDataInPreviousStep(totalDiseaseStatisticInRegionDto,
                        0));
    }

    @Test
    void testNegativeStepIfSameDataInPreviousStepExpectedIllegalArgumentException() {
        //given
        DiseaseStatisticInRegionDto totalDiseaseStatisticInRegionDto = new DiseaseStatisticInRegionDto();
        when(regionRepository.findByRegion("Cała Polska")).thenReturn(Optional.empty());
        //when
        //then
        Assertions.assertThrows(IllegalArgumentException.class,
                () -> diseaseStatisticInRegionService.ifSameDataInPreviousStep(totalDiseaseStatisticInRegionDto,
                        -1));
    }

    @Test
    void testNoCountryFoundInRepositoryIfSameDataInPreviousStepExpectedIllegalArgumentException() {
        //given
        DiseaseStatisticInRegionDto totalDiseaseStatisticInRegionDto = new DiseaseStatisticInRegionDto();
        when(regionRepository.findByRegion("Cała Polska")).thenReturn(Optional.empty());
        //when
        //then
        Assertions.assertThrows(IllegalArgumentException.class,
                () -> diseaseStatisticInRegionService.ifSameDataInPreviousStep(totalDiseaseStatisticInRegionDto,
                        1L));
    }

    @Test
    void testFirstStepIfSameDataInPreviousStepExpectedFalse() {
        //given
        DiseaseStatisticInRegionDto totalDiseaseStatisticInRegionDto = new DiseaseStatisticInRegionDto();
        Region region = new Region();
        region.setRegion("Cała Polska");
        when(regionRepository.findByRegion("Cała Polska")).thenReturn(Optional.of(region));
        //when
        boolean result = diseaseStatisticInRegionService.ifSameDataInPreviousStep(totalDiseaseStatisticInRegionDto, 1);
        //then
        assertFalse(result);
    }

    @Test
    void testEmptyOptionalFoundIfSameDataInPreviousStepExpectedIllegalArgumentException() {
        //given
        DiseaseStatisticInRegionDto totalDiseaseStatisticInRegionDto = new DiseaseStatisticInRegionDto();
        Region region = new Region();
        region.setRegion("Cała Polska");
        when(regionRepository.findByRegion("Cała Polska")).thenReturn(Optional.of(region));
        when(diseaseStatisticInRegionRepository.findByRegionAndTimeStep(region, 1))
                .thenReturn(Optional.empty());
        //when
        //then
        Assertions.assertThrows(IllegalArgumentException.class,
                () -> diseaseStatisticInRegionService.ifSameDataInPreviousStep(totalDiseaseStatisticInRegionDto, 2L));

    }

    @ParameterizedTest
    @CsvSource({
            "0, 0",
            "20, 0",
            "40, 10"
    })
    void testInputSameDataIfSameDataInPreviousStepExpectedTrue(long diseases, long deaths) {
        //given
        DiseaseStatisticInRegionDto totalDiseaseStatisticInRegionDto = new DiseaseStatisticInRegionDto();
        DiseaseStatisticInRegion diseaseStatisticInRegion = new DiseaseStatisticInRegion();
        Region region = new Region();
        totalDiseaseStatisticInRegionDto.setTotalSickInRegion(diseases);
        totalDiseaseStatisticInRegionDto.setTotalDeathsInRegion(deaths);
        diseaseStatisticInRegion.setTotalDiseaseCasesInRegion(diseases);
        diseaseStatisticInRegion.setTotalDeathsInRegion(deaths);
        region.setRegion("Cała Polska");
        when(regionRepository.findByRegion("Cała Polska")).thenReturn(Optional.of(region));
        when(diseaseStatisticInRegionRepository.findByRegionAndTimeStep(region, 1))
                .thenReturn(Optional.of(diseaseStatisticInRegion));
        //when
        boolean result = diseaseStatisticInRegionService.ifSameDataInPreviousStep(totalDiseaseStatisticInRegionDto, 2);
        //then
        assertTrue(result);
    }

    @ParameterizedTest
    @CsvSource({
            "0, 0, 0, 1",
            "0, 0, 1, 0",
            "0, 1, 0, 0",
            "1, 0, 0, 0",
            "20, 0, 22, 1",
            "15, 23, 22, 1",
            "10, 1, 12, 1"
    })
    void testInputDifferentDataIfSameDataInPreviousStepExpectedFalse(long diseasesDto, long deathsDto, long diseases, long deaths) {
        //given
        DiseaseStatisticInRegionDto totalDiseaseStatisticInRegionDto = new DiseaseStatisticInRegionDto();
        DiseaseStatisticInRegion diseaseStatisticInRegion = new DiseaseStatisticInRegion();
        Region region = new Region();
        totalDiseaseStatisticInRegionDto.setTotalSickInRegion(diseasesDto);
        totalDiseaseStatisticInRegionDto.setTotalDeathsInRegion(deathsDto);
        diseaseStatisticInRegion.setTotalDiseaseCasesInRegion(diseases);
        diseaseStatisticInRegion.setTotalDeathsInRegion(deaths);
        region.setRegion("Cała Polska");
        when(regionRepository.findByRegion("Cała Polska")).thenReturn(Optional.of(region));
        when(diseaseStatisticInRegionRepository.findByRegionAndTimeStep(region, 1))
                .thenReturn(Optional.of(diseaseStatisticInRegion));
        //when
        boolean result = diseaseStatisticInRegionService.ifSameDataInPreviousStep(totalDiseaseStatisticInRegionDto, 2);
        //then
        assertFalse(result);
    }
}