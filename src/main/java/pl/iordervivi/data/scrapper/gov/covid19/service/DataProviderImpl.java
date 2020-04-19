package pl.iordervivi.data.scrapper.gov.covid19.service;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.type.CollectionType;
import com.fasterxml.jackson.databind.type.TypeFactory;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.springframework.stereotype.Service;
import pl.iordervivi.data.scrapper.gov.covid19.config.ApplicationProperties;
import pl.iordervivi.data.scrapper.gov.covid19.config.LogResourceText;
import pl.iordervivi.data.scrapper.gov.covid19.config.ModelMapperConfiguration;
import pl.iordervivi.data.scrapper.gov.covid19.dto.DiseaseStatisticInRegionDto;

import javax.transaction.Transactional;
import java.io.IOException;
import java.time.LocalDateTime;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Optional;

@Service
@Transactional
@Slf4j
@RequiredArgsConstructor
public class DataProviderImpl implements DataProvider {

    private final static int TOTAL_NUMBER_OF_REGIONS_IN_POLAND_WITH_WHOLE_COUNTRY = 17;
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

    private final ModelMapperConfiguration modelMapper;
    private final ApplicationProperties applicationProperties;
    private final RegionService regionService;
    private final DiseaseStatisticInRegionService diseaseStatisticInRegionService;

    @Override
    public void addDiseaseStatisticByRegions() {
        log.info(LogResourceText.DATA_SCRAPPING_STARTED);
        long step = diseaseStatisticInRegionService.getCurrentStep();
        List<DiseaseStatisticInRegionDto> diseaseStatisticInRegions = getDiseaseStatisticInRegions();

        if (validateDiseaseStatisticInRegions(diseaseStatisticInRegions))
            log.trace("Dto list validation successful");

        if (!checkIfThereIsNewData(diseaseStatisticInRegions, step)) {
            log.info(LogResourceText.DATA_SCRAPPING_SAME_DATA);
            return;
        }

        regionService.addRegions(diseaseStatisticInRegions);
        diseaseStatisticInRegionService.addSick(diseaseStatisticInRegions,
                LocalDateTime.now(),
                step);
        log.info(LogResourceText.DATA_SCRAPPING_COMPLETE);
    }

    boolean validateDiseaseStatisticInRegions(List<DiseaseStatisticInRegionDto> diseaseStatisticInRegions) {
        if (diseaseStatisticInRegions == null ||
                diseaseStatisticInRegions.size() !=
                        TOTAL_NUMBER_OF_REGIONS_IN_POLAND_WITH_WHOLE_COUNTRY) {
            throw new IllegalArgumentException(LogResourceText.DATA_SCRAPPING_NULL_DTO_LIST);
        }
        for (DiseaseStatisticInRegionDto diseaseStatisticInRegion : diseaseStatisticInRegions) {
            if (diseaseStatisticInRegion == null) {
                throw new IllegalArgumentException(LogResourceText.DATA_SCRAPPING_NULL_DTO_LIST);
            }
        }
        for (String regionName : REGION_NAME_VALIDATION_SET) {
            if (!checkIfRegionNameIsInSet(diseaseStatisticInRegions, regionName)) {
                throw new IllegalArgumentException(LogResourceText.DATA_SCRAPPING_REGION_NOT_FOUND);
            }
        }
        return true;
    }

    boolean checkIfRegionNameIsInSet(List<DiseaseStatisticInRegionDto> diseaseStatisticInRegions,
                                     String regionName) {
        for (DiseaseStatisticInRegionDto diseaseStatisticInRegion : diseaseStatisticInRegions) {
            if (diseaseStatisticInRegion.getRegionName().equals(regionName)) {
                return true;
            }
        }
        return false;
    }

    boolean checkIfThereIsNewData(List<DiseaseStatisticInRegionDto> diseaseStatisticInRegions, long step) {
        Optional<DiseaseStatisticInRegionDto> totalSickInRegionsDto =
                getTotalCountryDiseaseStatisticEntry(diseaseStatisticInRegions);
        return step <= 1 || totalSickInRegionsDto.isEmpty()
                || !diseaseStatisticInRegionService.ifSameDataInPreviousStep(totalSickInRegionsDto.get(), step);
    }

    List<DiseaseStatisticInRegionDto> getDiseaseStatisticInRegions() {
        String jsonData = internationalizeJsonData(webScrapperRun());
        CollectionType typeReference = TypeFactory
                .defaultInstance()
                .constructCollectionType(List.class,
                        DiseaseStatisticInRegionDto.class);
        try {
            return modelMapper.getMapper().readValue(jsonData, typeReference);
        } catch (JsonProcessingException e) {
            log.error(LogResourceText.DATA_SCRAPPING_JSON_MM_ERROR);
            e.printStackTrace();
        }
        return Collections.emptyList();
    }

    String webScrapperRun() {
        Document document = null;
        try {
            document = Jsoup.connect(applicationProperties.getDataProviderUrl()).get();
        } catch (IOException e) {
            log.error(Arrays.toString(e.getStackTrace()));
        }

        if (document == null) {
            throw new IllegalArgumentException(LogResourceText.DATA_SCRAPPING_NULL_WEB_PAGE_CONTENT);
        }
        Element formElement = document.select("pre").first();
        String jsonData = StringUtils.substringBetween(formElement.toString(),
                "\"parsedData\":\"",
                "\",\"fileName\"");
        return StringUtils.remove(jsonData, "\\");
    }

    String internationalizeJsonData(String jsonData) {
        jsonData = jsonData.replace("Województwo", "region");
        jsonData = jsonData.replace("Liczba", "sick");
        jsonData = jsonData.replace("sick zgonów", "deaths");
        return jsonData;
    }

    Optional<DiseaseStatisticInRegionDto> getTotalCountryDiseaseStatisticEntry(
            List<DiseaseStatisticInRegionDto> diseaseStatisticInRegionDtoList) {
        for (DiseaseStatisticInRegionDto DiseaseStatisticInRegionDTO : diseaseStatisticInRegionDtoList) {
            if (DiseaseStatisticInRegionDTO.getRegionName()
                    .equals(REGION_NAME_VALIDATION_SET[0])) {
                return Optional.of(DiseaseStatisticInRegionDTO);
            }
        }
        return Optional.empty();
    }
}
