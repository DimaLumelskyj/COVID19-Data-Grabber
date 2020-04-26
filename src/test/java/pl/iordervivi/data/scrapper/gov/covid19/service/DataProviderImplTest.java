package pl.iordervivi.data.scrapper.gov.covid19.service;

import com.fasterxml.jackson.databind.ObjectMapper;
import org.junit.Rule;
import org.junit.jupiter.api.*;
import org.junit.jupiter.api.extension.ExtendWith;
import org.junit.rules.ExpectedException;
import org.mockito.InjectMocks;
import org.mockito.junit.jupiter.MockitoExtension;
import org.springframework.test.util.ReflectionTestUtils;
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

    @Rule
    public ExpectedException exceptionRule = ExpectedException.none();
    private DataProviderImpl dataProvider;
    @InjectMocks
    private final ApplicationProperties applicationProperties = new ApplicationProperties();
    private final ObjectMapper modelMapper = new ObjectMapper();

    @BeforeEach
    void initData() {

        String applicationTimezone = "UTC";
        int frequency = 20;
        String dataProviderUrl = "www.url.com";

        ReflectionTestUtils.setField(applicationProperties,
                "applicationTimezone",
                applicationTimezone);
        ReflectionTestUtils.setField(applicationProperties,
                "frequency",
                frequency);
        ReflectionTestUtils.setField(applicationProperties,
                "dataProviderUrl",
                dataProviderUrl);

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
        System.out.println("Repeated test number: " + repetitionInfo.getCurrentRepetition());
        for (int i = 0; i < 17; i++) {
            if (i == nullPosition) {
                diseaseStatisticInRegions.add(null);
            } else {
                diseaseStatisticInRegions.add(new DiseaseStatisticInRegionDto());
            }
        }
        System.out.println("Generated data list: " + diseaseStatisticInRegions);
        //when
        //then
        Assertions.assertThrows(IllegalArgumentException.class, () -> dataProvider.validateDiseaseStatisticInRegions(diseaseStatisticInRegions));
    }

    @RepeatedTest(17)
    void testProperInputListWithWrongRegionNameValidateDiseaseStatisticInRegionsExpectsIllegalArgumentException(RepetitionInfo repetitionInfo) {
        //given
        List<DiseaseStatisticInRegionDto> diseaseStatisticInRegions = new ArrayList<>();
        int nullPosition = repetitionInfo.getCurrentRepetition() - 1;
        System.out.println("Repeated test number: " + repetitionInfo.getCurrentRepetition());
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
        System.out.println("Generated data list: " + diseaseStatisticInRegions);
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