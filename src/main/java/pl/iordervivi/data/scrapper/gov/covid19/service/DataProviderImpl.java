package pl.iordervivi.data.scrapper.gov.covid19.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import pl.iordervivi.data.scrapper.gov.covid19.job.DataForCovid19StatisticWebScrapperJob;
import pl.iordervivi.data.scrapper.gov.covid19.repo.RegionRepository;
import pl.iordervivi.data.scrapper.gov.covid19.repo.SickRepository;

@Service
public class DataProviderImpl implements DataProvider {
    private static Logger logger = LoggerFactory.getLogger(DataForCovid19StatisticWebScrapperJob.class);

    private final RegionRepository regionRepository;
    private final SickRepository sickRepository;
    @Value("${data.url.provider}")
    private String dataWebScrapUrl;

    public DataProviderImpl(RegionRepository regionRepository, SickRepository sickRepository) {
        this.regionRepository = regionRepository;
        this.sickRepository = sickRepository;
    }

    @Override
    public void addSicksByRegion() {
        logger.info("Scrapping...");

    }
}
