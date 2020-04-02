package pl.iordervivi.data.scrapper.gov.covid19.service;

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
import pl.iordervivi.data.scrapper.gov.covid19.dto.SickInRegionsDto;
import pl.iordervivi.data.scrapper.gov.covid19.util.ErrorHandlerUtility;

import javax.transaction.Transactional;
import java.io.IOException;
import java.time.LocalDateTime;
import java.util.Arrays;
import java.util.List;
import java.util.Optional;

@Service
@Transactional
@Slf4j
@RequiredArgsConstructor
public class DataProviderImpl implements DataProvider {

    private final static ObjectMapper mapper = new ObjectMapper();
    private final ApplicationProperties applicationProperties;
    private final RegionService regionService;
    private final SickService sickService;
    private final SickInRegionsDtoService sickInRegionsDtoService;


    @Override
    public void addDiseaseStatisticByRegions() {
        log.info(LogResourceText.DATA_SCRAPPING_STARTED);
        try {
            long step = sickService.getCurrentStep();
            List<SickInRegionsDto> sickInRegionsDtoList = webScrapperTry();
            Optional<SickInRegionsDto> totalSickInRegionsDto = sickInRegionsDtoService.ifExistsTotalSickEntryInRegionDtoObjectList(sickInRegionsDtoList);
            if (step > 1 && totalSickInRegionsDto.isPresent() && sickService.ifSameDataInPreviousStep(totalSickInRegionsDto, step)) {
                log.info(LogResourceText.DATA_SCRAPPING_SAME_DATA);
                return;
            }
            regionService.addRegions(sickInRegionsDtoList);
            LocalDateTime now = LocalDateTime.now();
            sickService.addSick(sickInRegionsDtoList, now, step);
            log.info(LogResourceText.DATA_SCRAPPING_COMPLETE);
        } catch (IOException e) {
            log.error(Arrays.toString(e.getStackTrace()));
        }
    }

    private List<SickInRegionsDto> webScrapperTry() throws IOException {
        Document document = Jsoup.connect(applicationProperties.getDataProviderUrl()).get();
        Element formElement = document.select("pre").first();
        String jsonData = StringUtils.substringBetween(formElement.toString(), "\"parsedData\":\"", "\",\"fileName\"");
        jsonData = StringUtils.remove(jsonData, "\\");
        jsonData = internationalizeJsonData(jsonData);
        DeserializationProblemHandler deserializationProblemHandler = new ErrorHandlerUtility.UnMarshallingErrorHandler();
        mapper.addHandler(deserializationProblemHandler);
        CollectionType typeReference =
                TypeFactory.defaultInstance().constructCollectionType(List.class, SickInRegionsDto.class);
        return mapper.readValue(jsonData, typeReference);
    }

    private String internationalizeJsonData(String jsonData) {
        jsonData = jsonData.replace("Województwo", "region");
        jsonData = jsonData.replace("Liczba", "sick");
        jsonData = jsonData.replace("sick zgonów", "deaths");
        return jsonData;
    }

}
