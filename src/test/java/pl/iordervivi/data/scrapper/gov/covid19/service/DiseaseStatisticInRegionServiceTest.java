package pl.iordervivi.data.scrapper.gov.covid19.service;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import pl.iordervivi.data.scrapper.gov.covid19.domain.DiseaseStatisticInRegion;
import pl.iordervivi.data.scrapper.gov.covid19.repo.DiseaseStatisticInRegionRepository;
import pl.iordervivi.data.scrapper.gov.covid19.repo.RegionRepository;

import java.util.Optional;

import static org.junit.jupiter.api.Assertions.assertEquals;
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
        when(diseaseStatisticInRegionRepository.findTopByOrderByTimeStepDesc()).thenReturn(Optional.of(diseaseStatisticInRegion));
        //when
        long step = diseaseStatisticInRegionService.getCurrentStep();
        //then
        assertEquals(2L, step);
    }

    @Test
    void ifSameDataInPreviousStep() {

    }
}