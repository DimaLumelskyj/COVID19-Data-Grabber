package pl.iordervivi.data.scrapper.gov.covid19.service;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JsonDeserializer;
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
import pl.iordervivi.data.scrapper.gov.covid19.domain.Region;
import pl.iordervivi.data.scrapper.gov.covid19.domain.Sick;
import pl.iordervivi.data.scrapper.gov.covid19.dto.SickInRegionsDto;
import pl.iordervivi.data.scrapper.gov.covid19.job.DataForCovid19StatisticWebScrapperJob;
import pl.iordervivi.data.scrapper.gov.covid19.repo.RegionRepository;
import pl.iordervivi.data.scrapper.gov.covid19.repo.SickRepository;

import javax.transaction.Transactional;
import java.io.IOException;
import java.time.LocalDateTime;
import java.util.Arrays;
import java.util.List;
import java.util.Optional;

@Service
public class DataProviderImpl implements DataProvider {
    private final static Logger logger = LoggerFactory.getLogger(DataForCovid19StatisticWebScrapperJob.class);
    private final static ObjectMapper mapper = new ObjectMapper();
    private final RegionRepository regionRepository;
    private final SickRepository sickRepository;
    @Value("${data.url.provider}")
    private String dataWebScrapUrl;

    public DataProviderImpl(RegionRepository regionRepository, SickRepository sickRepository) {
        this.regionRepository = regionRepository;
        this.sickRepository = sickRepository;
    }

    @Override
    public boolean addSicksByRegion() {
        logger.info("Scrapping...");
        try {
            long step = getCurrentStep();
            List<SickInRegionsDto> sickInRegionsDtoList = webScrapperTry();
            Optional<SickInRegionsDto> totalSickInRegionsDto = getIfExistsTotalSickInRegionDtoObject(sickInRegionsDtoList);
            if (step > 1 && totalSickInRegionsDto.isPresent() && ifSameDataInPreviousStep(totalSickInRegionsDto, step)) {
                logger.info("There is the same data in previous step so not adding to the database");
                return false;
            }
            addRegions(sickInRegionsDtoList);
            LocalDateTime now = LocalDateTime.now();
            addSick(sickInRegionsDtoList, now, step);
            logger.info("Parsing complete");
            return true;
        } catch (IOException e) {
            logger.error(Arrays.toString(e.getStackTrace()));
            return false;
        }
    }

    private long getCurrentStep() {
        Optional<Sick> sick = sickRepository.findTopByOrderByTimeStepDesc();
        return sick.map(value -> value.getTimeStep() + 1).orElse(1L);
    }

    private boolean ifSameDataInPreviousStep(Optional<SickInRegionsDto> totalSickInRegionsDto, long step) {
        Optional<Region> region = regionRepository.findByRegion("Cała Polska");
        assert region.isPresent();
        if (step == 1) {
            return false;
        }
        Optional<Sick> sick = sickRepository.findByRegionAndTimeStep(region.get(), step - 1);
        assert sick.isPresent();
        assert totalSickInRegionsDto.isPresent();
        return sick.get().getTotalSickInRegion() == totalSickInRegionsDto.get().getTotalSickInRegion() &&
                sick.get().getTotalDeathsInRegion() == totalSickInRegionsDto.get().getTotalDeathsInRegion();
    }

    private Optional<SickInRegionsDto> getIfExistsTotalSickInRegionDtoObject(List<SickInRegionsDto> sickInRegionsDtoList) {
        for (SickInRegionsDto sickInRegionsDTO : sickInRegionsDtoList) {
            if (sickInRegionsDTO.getRegionName().equals("Cała Polska")) {
                return Optional.of(sickInRegionsDTO);
            }
        }
        return Optional.empty();
    }

    private List<SickInRegionsDto> webScrapperTry() throws IOException {
        Document document = Jsoup.connect(dataWebScrapUrl).get();
        Element formElement = document.select("pre").first();
        String jsonData = StringUtils.substringBetween(formElement.toString(), "\"parsedData\":\"", "\",\"fileName\"");
        jsonData = StringUtils.remove(jsonData, "\\");
        DeserializationProblemHandler deserializationProblemHandler = new UnMarshallingErrorHandler();
        mapper.addHandler(deserializationProblemHandler);
        CollectionType typeReference =
                TypeFactory.defaultInstance().constructCollectionType(List.class, SickInRegionsDto.class);
        return mapper.readValue(jsonData, typeReference);
    }


    @Transactional
    void addRegions(List<SickInRegionsDto> sickInRegionsDtos) {
        for (SickInRegionsDto sickInRegionsDTO : sickInRegionsDtos) {
            if (!regionRepository.existsByRegion(sickInRegionsDTO.getRegionName())) {
                regionRepository.save(new Region(sickInRegionsDTO.getRegionName()));
            }
        }
    }

    @Transactional
    void addSick(List<SickInRegionsDto> sickInRegionsDtos, LocalDateTime now, long step) {
        long sick;
        long death;
        for (SickInRegionsDto sickInRegionsDTO : sickInRegionsDtos) {
            sick = 0;
            death = 0;
            Optional<Region> region = regionRepository.findByRegion(sickInRegionsDTO.getRegionName());
            if (region.isEmpty()) {
                String er = "Region not found in DB during adding sick data to the database: " + sickInRegionsDTO.getRegionName();
                throw new NullPointerException(er);
            }
            if (sickInRegionsDTO.getTotalSickInRegion() != null) {
                sick = sickInRegionsDTO.getTotalSickInRegion();
            }
            if (sickInRegionsDTO.getTotalDeathsInRegion() != null) {
                death = sickInRegionsDTO.getTotalDeathsInRegion();
            }
            sickRepository.save(new Sick(sick, death, now, step, region.get()));
        }
    }

    // UnMarshallingErrorHandler class
    static class UnMarshallingErrorHandler extends DeserializationProblemHandler {
        @Override
        public boolean handleUnknownProperty(DeserializationContext ctxt, JsonParser jp, JsonDeserializer deserializer, Object beanOrClass, String propertyName) throws IOException {
            boolean result = false;
            super.handleUnknownProperty(ctxt, jp, deserializer, beanOrClass, propertyName);
            System.out.println("Property with name '" + propertyName + "' doesn't exist in Class of type '" + beanOrClass.getClass().getName() + "'");
            return true; // returns true to inform the deserialization process that we can handle the error and it can continue deserialize
            // and returns false, if we want to stop the deserialization immediately.
        }
    }
}
