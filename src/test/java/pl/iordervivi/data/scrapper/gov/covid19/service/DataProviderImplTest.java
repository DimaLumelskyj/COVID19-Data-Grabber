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

import static org.junit.jupiter.api.Assertions.assertEquals;
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

        //given
        String message = "List<DiseaseStatisticInRegionDto> diseaseStatisticInRegions can't be empty or have null elements";

        //when
        IllegalArgumentException exception = Assertions.assertThrows(IllegalArgumentException.class, () -> dataProvider.validateDiseaseStatisticInRegions(null));

        //then
        assertEquals(message, exception.getMessage());
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

    @Test
    void testProperDataInputOneRegionWebScrapperRun() {
        //given
        String input = "<script src=\"/scripts/vendors/xml-js-1.6.11.min.js\"></script>\n" +
                "<pre id=\"registerData\"parsedData\":\"[{\\&quot;Wojew&oacute;dztwo\\&quot;:\\&quot;Ca&#322;a Polska\\&quot;,\\&quot;Liczba\\&quot;:\\&quot;12877\\&quot;,\\&quot;Liczba zgon&oacute;w\\&quot;:\\&quot;644\\&quot;,\\&quot;Id\\&quot;:\\&quot;t00\\&quot;},{\\&quot;Wojew&oacute;dztwo\\&quot;:\\&quot;dolno&#347;l&#261;skie\\&quot;,\\&quot;Liczba\\&quot;:\\&quot;1563\\&quot;,\\&quot;Liczba zgon&oacute;w\\&quot;:\\&quot;48\\&quot;,\\&quot;Id\\&quot;:\\&quot;t02\\&quot;},{\\&quot;Wojew&oacute;dztwo\\&quot;:\\&quot;kujawsko-pomorskie\\&quot;,\\&quot;Liczba\\&quot;:\\&quot;544\\&quot;,\\&quot;Liczba zgon&oacute;w\\&quot;:\\&quot;28\\&quot;,\\&quot;Id\\&quot;:\\&quot;t04\\&quot;},{\\&quot;Wojew&oacute;dztwo\\&quot;:\\&quot;lubelskie\\&quot;,\\&quot;Liczba\\&quot;:\\&quot;360\\&quot;,\\&quot;Liczba zgon&oacute;w\\&quot;:\\&quot;13\\&quot;,\\&quot;Id\\&quot;:\\&quot;t06\\&quot;},{\\&quot;Wojew&oacute;dztwo\\&quot;:\\&quot;lubuskie\\&quot;,\\&quot;Liczba\\&quot;:\\&quot;87\\&quot;,\\&quot;Liczba zgon&oacute;w\\&quot;:\\&quot;0\\&quot;,\\&quot;Id\\&quot;:\\&quot;t08\\&quot;},{\\&quot;Wojew&oacute;dztwo\\&quot;:\\&quot;&#322;&oacute;dzkie\\&quot;,\\&quot;Liczba\\&quot;:\\&quot;954\\&quot;,\\&quot;Liczba zgon&oacute;w\\&quot;:\\&quot;31\\&quot;,\\&quot;Id\\&quot;:\\&quot;t10\\&quot;},{\\&quot;Wojew&oacute;dztwo\\&quot;:\\&quot;ma&#322;opolskie\\&quot;,\\&quot;Liczba\\&quot;:\\&quot;897\\&quot;,\\&quot;Liczba zgon&oacute;w\\&quot;:\\&quot;30\\&quot;,\\&quot;Id\\&quot;:\\&quot;t12\\&quot;},{\\&quot;Wojew&oacute;dztwo\\&quot;:\\&quot;mazowieckie\\&quot;,\\&quot;Liczba\\&quot;:\\&quot;2452\\&quot;,\\&quot;Liczba zgon&oacute;w\\&quot;:\\&quot;206\\&quot;,\\&quot;Id\\&quot;:\\&quot;t14\\&quot;},{\\&quot;Wojew&oacute;dztwo\\&quot;:\\&quot;opolskie\\&quot;,\\&quot;Liczba\\&quot;:\\&quot;394\\&quot;,\\&quot;Liczba zgon&oacute;w\\&quot;:\\&quot;28\\&quot;,\\&quot;Id\\&quot;:\\&quot;t16\\&quot;},{\\&quot;Wojew&oacute;dztwo\\&quot;:\\&quot;podkarpackie\\&quot;,\\&quot;Liczba\\&quot;:\\&quot;329\\&quot;,\\&quot;Liczba zgon&oacute;w\\&quot;:\\&quot;23\\&quot;,\\&quot;Id\\&quot;:\\&quot;t18\\&quot;},{\\&quot;Wojew&oacute;dztwo\\&quot;:\\&quot;podlaskie\\&quot;,\\&quot;Liczba\\&quot;:\\&quot;375\\&quot;,\\&quot;Liczba zgon&oacute;w\\&quot;:\\&quot;3\\&quot;,\\&quot;Id\\&quot;:\\&quot;t20\\&quot;},{\\&quot;Wojew&oacute;dztwo\\&quot;:\\&quot;pomorskie\\&quot;,\\&quot;Liczba\\&quot;:\\&quot;428\\&quot;,\\&quot;Liczba zgon&oacute;w\\&quot;:\\&quot;11\\&quot;,\\&quot;Id\\&quot;:\\&quot;t22\\&quot;},{\\&quot;Wojew&oacute;dztwo\\&quot;:\\&quot;&#347;l&#261;skie\\&quot;,\\&quot;Liczba\\&quot;:\\&quot;2239\\&quot;,\\&quot;Liczba zgon&oacute;w\\&quot;:\\&quot;118\\&quot;,\\&quot;Id\\&quot;:\\&quot;t24\\&quot;},{\\&quot;Wojew&oacute;dztwo\\&quot;:\\&quot;&#347;wi&#281;tokrzyskie\\&quot;,\\&quot;Liczba\\&quot;:\\&quot;270\\&quot;,\\&quot;Liczba zgon&oacute;w\\&quot;:\\&quot;8\\&quot;,\\&quot;Id\\&quot;:\\&quot;t26\\&quot;},{\\&quot;Wojew&oacute;dztwo\\&quot;:\\&quot;warmi&#324;sko-mazurskie\\&quot;,\\&quot;Liczba\\&quot;:\\&quot;148\\&quot;,\\&quot;Liczba zgon&oacute;w\\&quot;:\\&quot;1\\&quot;,\\&quot;Id\\&quot;:\\&quot;t28\\&quot;},{\\&quot;Wojew&oacute;dztwo\\&quot;:\\&quot;wielkopolskie\\&quot;,\\&quot;Liczba\\&quot;:\\&quot;1441\\&quot;,\\&quot;Liczba zgon&oacute;w\\&quot;:\\&quot;86\\&quot;,\\&quot;Id\\&quot;:\\&quot;t30\\&quot;},{\\&quot;Wojew&oacute;dztwo\\&quot;:\\&quot;zachodniopomorskie\\&quot;,\\&quot;Liczba\\&quot;:\\&quot;396\\&quot;,\\&quot;Liczba zgon&oacute;w\\&quot;:\\&quot;10\\&quot;,\\&quot;Id\\&quot;:\\&quot;t32\\&quot;}]\",\"fileName\":\"12877.csv\",\"fileType\":\"CSV\",\"columns\":[{\"name\":\"Województwo\",\"type\":\"SIMPLE\",\"width\":20},{\"name\":\"Liczba\",\"type\":\"SIMPLE\",\"width\":15},{\"name\":\"Liczba zgonów\",\"type\":\"SIMPLE\",\"width\":15},{\"name\":\"Id\",\"type\":\"DETAILS\",\"width\":30}]}</pre>\n" +
                "<script src=\"/scripts/components_vue/pagination.js\"></script>";
        //when

        //then
    }
}