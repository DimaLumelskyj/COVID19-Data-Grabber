package pl.iordervivi.data.scrapper.gov.covid19.service;

import com.fasterxml.jackson.databind.ObjectMapper;
import org.junit.jupiter.api.*;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;
import pl.iordervivi.data.scrapper.gov.covid19.config.ApplicationProperties;
import pl.iordervivi.data.scrapper.gov.covid19.dto.DiseaseStatisticInRegionDto;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import static org.junit.jupiter.api.Assertions.fail;

@ExtendWith(MockitoExtension.class)
class DataProviderImplTest {

    private final static String[] REGION_NAME_VALIDATION_SET = {"Cała Polska",
            "dolnośląskie",
            "kujawsko-pomorskie",
            "lubelskie",
            "lubuskie",
            "łódzkie",
            "małopolskie",
            "mazowieckie",
            "opolskie",
            "podkarpackie",
            "podlaskie",
            "pomorskie",
            "śląskie",
            "świętokrzyskie",
            "warmińsko-mazurskie",
            "wielkopolskie",
            "zachodniopomorskie"};


    @InjectMocks
    private DataProviderImpl dataProvider;
    @Mock
    private ObjectMapper modelMapper;
    @Mock
    private ApplicationProperties applicationProperties;

    @BeforeEach
    void initData() {
        dataProvider = new DataProviderImpl(modelMapper,
                applicationProperties,
                null,
                null);
    }

    @Test
    void testNullInputListValidateDiseaseStatisticInRegionsExpectsIllegalArgumentException() {
        //then
        Assertions.assertThrows(IllegalArgumentException.class, () -> dataProvider.validateDiseaseStatisticInRegions(null));
    }

    @Test
    void testEmptyCollectionInputListValidateDiseaseStatisticInRegionsExpectsIllegalArgumentException() {
        //given
        List<DiseaseStatisticInRegionDto> diseaseStatisticInRegions = Collections.emptyList();
        //when
        //then
        Assertions.assertThrows(IllegalArgumentException.class, () -> dataProvider.validateDiseaseStatisticInRegions(diseaseStatisticInRegions));
    }

    @Test
    void testZeroSizeCollectionInputListValidateDiseaseStatisticInRegionsExpectsIllegalArgumentException() {
        //given
        List<DiseaseStatisticInRegionDto> diseaseStatisticInRegions = new ArrayList<>();
        //when
        //then
        Assertions.assertThrows(IllegalArgumentException.class, () -> dataProvider.validateDiseaseStatisticInRegions(diseaseStatisticInRegions));
    }


    @Test
    void testOneElementSizeCollectionInputListValidateDiseaseStatisticInRegionsExpectsIllegalArgumentException() {
        //given
        List<DiseaseStatisticInRegionDto> diseaseStatisticInRegions = new ArrayList<>();
        diseaseStatisticInRegions.add(new DiseaseStatisticInRegionDto());
        //when
        //then
        Assertions.assertThrows(IllegalArgumentException.class, () -> dataProvider.validateDiseaseStatisticInRegions(diseaseStatisticInRegions));
    }


    @Test
    void testProperSizeInputListWithNullElementsValidateDiseaseStatisticInRegionsExpectsIllegalArgumentException() {
        //given
        List<DiseaseStatisticInRegionDto> diseaseStatisticInRegions = new ArrayList<>();
        for (int i = 0; i < 17; i++) {
            diseaseStatisticInRegions.add(null);
        }
        //when
        //then
        Assertions.assertThrows(IllegalArgumentException.class, () -> dataProvider.validateDiseaseStatisticInRegions(diseaseStatisticInRegions));
    }


    @RepeatedTest(17)
    void testProperSizeInputListWithRandomNullElementsValidateDiseaseStatisticInRegionsExpectsIllegalArgumentException(RepetitionInfo repetitionInfo) {
        //given
        List<DiseaseStatisticInRegionDto> diseaseStatisticInRegions = new ArrayList<>();
        int nullPosition = repetitionInfo.getCurrentRepetition() - 1;
        for (int i = 0; i < 17; i++) {
            if (i == nullPosition) {
                diseaseStatisticInRegions.add(null);
            } else {
                diseaseStatisticInRegions.add(new DiseaseStatisticInRegionDto());
            }
        }
        //when
        //then
        Assertions.assertThrows(IllegalArgumentException.class, () -> dataProvider.validateDiseaseStatisticInRegions(diseaseStatisticInRegions));
    }

    @RepeatedTest(17)
    void testProperInputListWithWrongRegionNameValidateDiseaseStatisticInRegionsExpectsIllegalArgumentException(RepetitionInfo repetitionInfo) {
        //given
        List<DiseaseStatisticInRegionDto> diseaseStatisticInRegions = new ArrayList<>();
        int nullPosition = repetitionInfo.getCurrentRepetition() - 1;
        for (int i = 0; i < 17; i++) {
            if (i == nullPosition) {
                diseaseStatisticInRegions.add(new DiseaseStatisticInRegionDto(" ",
                        0L,
                        0L,
                        ""));
            } else {
                diseaseStatisticInRegions.add(new DiseaseStatisticInRegionDto(REGION_NAME_VALIDATION_SET[i],
                        0L,
                        0L,
                        ""));
            }
        }
        //when
        //then
        Assertions.assertThrows(IllegalArgumentException.class, () -> dataProvider.validateDiseaseStatisticInRegions(diseaseStatisticInRegions));
    }

    @Test
    void testGoodDataValidateDiseaseStatisticInRegionsExpectsTrue() {
        //given
        List<DiseaseStatisticInRegionDto> diseaseStatisticInRegions = new ArrayList<>();
        for (int i = 0; i < 17; i++) {
            diseaseStatisticInRegions.add(new DiseaseStatisticInRegionDto(REGION_NAME_VALIDATION_SET[i],
                    0L,
                    0L,
                    ""));
        }
        //then
        try {
            dataProvider.validateDiseaseStatisticInRegions(diseaseStatisticInRegions);
        } catch (IllegalArgumentException e) {
            fail();
        }
    }

}