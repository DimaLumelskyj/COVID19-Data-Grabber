package pl.iordervivi.data.scrapper.gov.covid19.service;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.deser.DeserializationProblemHandler;
import com.fasterxml.jackson.databind.type.CollectionType;
import com.fasterxml.jackson.databind.type.TypeFactory;
import org.apache.commons.lang3.StringUtils;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import pl.iordervivi.data.scrapper.gov.covid19.dto.SickInRegionsDto;
import pl.iordervivi.data.scrapper.gov.covid19.job.DataForCovid19StatisticWebScrapperJob;
import pl.iordervivi.data.scrapper.gov.covid19.util.ErrorHandlerUtility;

import javax.transaction.Transactional;
import java.io.IOException;
import java.time.LocalDateTime;
import java.util.Arrays;
import java.util.List;
import java.util.Optional;

@Service("DataProviderImpl")
@Transactional
public class DataProviderImpl implements DataProvider {
    private final static Logger logger = LoggerFactory.getLogger(DataForCovid19StatisticWebScrapperJob.class);
    private final static ObjectMapper mapper = new ObjectMapper();
    private final RegionService regionService;
    private final SickService sickService;
    private final SickInRegionsDtoService sickInRegionsDtoService;
    @Value("${data.url.provider}")
    private String dataWebScrapUrl;

    public DataProviderImpl(RegionService regionService,
                            SickService sickService,
                            SickInRegionsDtoService sickInRegionsDtoService) {
        this.regionService = regionService;
        this.sickService = sickService;
        this.sickInRegionsDtoService = sickInRegionsDtoService;
    }

    @Override
    public void addSicksByRegion() {
        logger.info("Scrapping...");
        try {
            long step = sickService.getCurrentStep();
            List<SickInRegionsDto> sickInRegionsDtoList = webScrapperTry();
            Optional<SickInRegionsDto> totalSickInRegionsDto = sickInRegionsDtoService.ifExistsTotalSickEntryInRegionDtoObjectList(sickInRegionsDtoList);
            if (step > 1 && totalSickInRegionsDto.isPresent() && sickService.ifSameDataInPreviousStep(totalSickInRegionsDto, step)) {
                logger.info("There is the same data in previous step so not adding to the database");
                return;
            }
            regionService.addRegions(sickInRegionsDtoList);
            LocalDateTime now = LocalDateTime.now();
            sickService.addSick(sickInRegionsDtoList, now, step);
            logger.info("Parsing complete");
        } catch (IOException e) {
            logger.error(Arrays.toString(e.getStackTrace()));
        }
    }

    private List<SickInRegionsDto> webScrapperTry() throws IOException {
        Document document = Jsoup.connect(dataWebScrapUrl).get();
        Element formElement = document.select("pre").first();
        String jsonData = StringUtils.substringBetween(formElement.toString(), "\"parsedData\":\"", "\",\"fileName\"");
        jsonData = StringUtils.remove(jsonData, "\\");
        DeserializationProblemHandler deserializationProblemHandler = new ErrorHandlerUtility.UnMarshallingErrorHandler();
        mapper.addHandler(deserializationProblemHandler);
        CollectionType typeReference =
                TypeFactory.defaultInstance().constructCollectionType(List.class, SickInRegionsDto.class);
        return mapper.readValue(jsonData, typeReference);
    }
}
