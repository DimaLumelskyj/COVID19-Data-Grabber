package pl.iordervivi.data.scrapper.gov.covid19.job;

import lombok.extern.slf4j.Slf4j;
import org.quartz.Job;
import org.quartz.JobExecutionContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Component;
import pl.iordervivi.data.scrapper.gov.covid19.config.LogResourceText;
import pl.iordervivi.data.scrapper.gov.covid19.service.DataProvider;

import javax.transaction.Transactional;

@Component
@Transactional
@Slf4j
public class Covid19PolandDataScrapperJob implements Job {

    //TODO: fix in future with static constructor and interface throw error
    @Autowired
    @Qualifier("dataProviderImpl")
    private DataProvider dataProvider;

    @Override
    public void execute(JobExecutionContext jobExecutionContext) {
        log.info(LogResourceText.WEB_SCRAPPING_STARTED);
        dataProvider.addSicksByRegion();
    }
}
