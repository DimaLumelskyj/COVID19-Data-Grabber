package pl.iordervivi.data.scrapper.gov.covid19.job;

import lombok.extern.slf4j.Slf4j;
import org.quartz.Job;
import org.quartz.JobExecutionContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import pl.iordervivi.data.scrapper.gov.covid19.config.LogResourceText;
import pl.iordervivi.data.scrapper.gov.covid19.service.DataProvider;

@Component
@Slf4j
public class Covid19PolandDataScrapperJob implements Job {

    @Autowired
    private DataProvider dataProvider;

    @Override
    public void execute(JobExecutionContext jobExecutionContext) {
        log.info(LogResourceText.WEB_SCRAPPING_STARTED);
        dataProvider.addDiseaseStatisticByRegions();
    }
}
