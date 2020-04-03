package pl.iordervivi.data.scrapper.gov.covid19.service;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.deser.DeserializationProblemHandler;
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
import pl.iordervivi.data.scrapper.gov.covid19.dto.DiseaseStatisticInRegionDto;
import pl.iordervivi.data.scrapper.gov.covid19.util.UnMarshallingErrorHandler;

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
    private final ObjectMapper mapper = new ObjectMapper();
    private final ApplicationProperties applicationProperties;
    private final RegionService regionService;
    private final DiseaseStatisticInRegionService diseaseStatisticInRegionService;

    @Override
    public void addDiseaseStatisticByRegions() {
        log.info(LogResourceText.DATA_SCRAPPING_STARTED);
        long step = diseaseStatisticInRegionService.getCurrentStep();
        List<DiseaseStatisticInRegionDto> diseaseStatisticInRegions = getDiseaseStatisticInRegions();

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

    private boolean checkIfThereIsNewData(List<DiseaseStatisticInRegionDto> diseaseStatisticInRegions, long step) {
        if (diseaseStatisticInRegions.isEmpty()) {
            throw new IllegalArgumentException(LogResourceText.DATA_SCRAPPING_NULL_DTO_LIST);
        }
        Optional<DiseaseStatisticInRegionDto> totalSickInRegionsDto =
                ifExistsTotalDiseaseStatisticEntryInRegionDtpObjectList(diseaseStatisticInRegions);
        return step <= 1 || totalSickInRegionsDto.isEmpty()
                || !diseaseStatisticInRegionService.ifSameDataInPreviousStep(totalSickInRegionsDto.get(), step);
    }

    private List<DiseaseStatisticInRegionDto> getDiseaseStatisticInRegions() {
        String jsonData = internationalizeJsonData(webScrapper());
        DeserializationProblemHandler deserializationProblemHandler = new UnMarshallingErrorHandler();
        mapper.addHandler(deserializationProblemHandler);
        CollectionType typeReference = TypeFactory
                .defaultInstance()
                .constructCollectionType(List.class,
                        DiseaseStatisticInRegionDto.class);
        try {
            return mapper.readValue(jsonData, typeReference);
        } catch (JsonProcessingException e) {
            e.printStackTrace();
        }
        return Collections.emptyList();
    }

    private String webScrapper() {
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
        String jsonData = StringUtils.substringBetween(formElement.toString(), "\"parsedData\":\"", "\",\"fileName\"");
        return StringUtils.remove(jsonData, "\\");
    }

    private String internationalizeJsonData(String jsonData) {
        jsonData = jsonData.replace("Województwo", "region");
        jsonData = jsonData.replace("Liczba", "sick");
        jsonData = jsonData.replace("sick zgonów", "deaths");
        return jsonData;
    }

    Optional<DiseaseStatisticInRegionDto> ifExistsTotalDiseaseStatisticEntryInRegionDtpObjectList(List<DiseaseStatisticInRegionDto> DiseaseStatisticInRegionDtoList) {
        for (DiseaseStatisticInRegionDto DiseaseStatisticInRegionDTO : DiseaseStatisticInRegionDtoList) {
            if (DiseaseStatisticInRegionDTO.getRegionName().equals("Cała Polska")) {
                return Optional.of(DiseaseStatisticInRegionDTO);
            }
        }
        return Optional.empty();
    }
}
