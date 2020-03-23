package pl.iordervivi.data.scrapper.gov.covid19.job;

import org.quartz.Job;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Component;
import pl.iordervivi.data.scrapper.gov.covid19.service.DataProvider;

import javax.transaction.Transactional;

@Component
@Transactional
public class DataForCovid19StatisticWebScrapperJob implements Job {
    private final static String jobStarted = "Data web scrapping for covid-19 disease starting";
    private static Logger logger = LoggerFactory.getLogger(DataForCovid19StatisticWebScrapperJob.class);

    //TODO: fix in future with static constructor and interface throw error
    @Autowired
    @Qualifier("DataProviderImpl")
    private DataProvider dataProvider;

    @Override
    public void execute(JobExecutionContext jobExecutionContext) throws JobExecutionException {
        logger.info(jobStarted);
        dataProvider.addSicksByRegion();
    }
}
