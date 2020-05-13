package pl.iordervivi.data.scrapper.gov.covid19.job;

import lombok.extern.slf4j.Slf4j;
import org.quartz.Job;
import org.quartz.JobExecutionContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import pl.iordervivi.data.scrapper.gov.covid19.service.DataProvider;

@Component
@Slf4j
public class Covid19DiseaseStatisticWebScrapperJob implements Job {

    private DataProvider dataProvider;

    @Autowired
    public void setDataProvider(DataProvider dataProvider) {
        this.dataProvider = dataProvider;
    }

    @Override
    public void execute(JobExecutionContext jobExecutionContext) {
        log.info("Job web scrapping of disease covid-19 statistic starting");
        dataProvider.addDiseaseStatisticByRegions();
    }
}
