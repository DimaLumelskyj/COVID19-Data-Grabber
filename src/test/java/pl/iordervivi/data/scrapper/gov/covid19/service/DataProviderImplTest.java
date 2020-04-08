package pl.iordervivi.data.scrapper.gov.covid19.service;

import org.junit.Rule;
import org.junit.jupiter.api.*;
import org.junit.rules.ExpectedException;
import org.mockito.InjectMocks;
import org.mockito.MockitoAnnotations;
import org.springframework.test.util.ReflectionTestUtils;
import pl.iordervivi.data.scrapper.gov.covid19.config.ApplicationProperties;
import pl.iordervivi.data.scrapper.gov.covid19.config.ModelMapperConfiguration;
import pl.iordervivi.data.scrapper.gov.covid19.dto.DiseaseStatisticInRegionDto;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import static org.junit.jupiter.api.Assertions.assertTrue;


class DataProviderImplTest {

    @Rule
    public ExpectedException exceptionRule = ExpectedException.none();
    private DataProviderImpl dataProvider;
    @InjectMocks
    private ApplicationProperties applicationProperties = new ApplicationProperties();
    private ModelMapperConfiguration modelMapper = new ModelMapperConfiguration();

    @BeforeEach
    void initData() {
        MockitoAnnotations.initMocks(this);

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
        //given
        List<DiseaseStatisticInRegionDto> diseaseStatisticInRegions = null;
        //when
        //then
        Assertions.assertThrows(IllegalArgumentException.class, () -> dataProvider.validateDiseaseStatisticInRegions(diseaseStatisticInRegions));
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
                diseaseStatisticInRegions.add(new DiseaseStatisticInRegionDto(applicationProperties.getREGION_NAME_VALIDATION_SET()[i],
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
            diseaseStatisticInRegions.add(new DiseaseStatisticInRegionDto(applicationProperties.getREGION_NAME_VALIDATION_SET()[i],
                    0L,
                    0L,
                    ""));
        }
        //when
        boolean result = dataProvider.validateDiseaseStatisticInRegions(diseaseStatisticInRegions);
        //then
        assertTrue(result);
    }

    @Test
    void checkIfThereIsNewDataFalseTest() {
        //given
        //when
        //then
    }


}