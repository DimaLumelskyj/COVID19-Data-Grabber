package pl.iordervivi.data.scrapper.gov.covid19.config;

import lombok.Getter;
import org.springframework.stereotype.Component;

@Component
@Getter
public class LogResourceText {
   public final static String WEB_SCRAPPING_STARTED = "Data web scrapping for covid-19 disease starting";
   public final static String JOB_SCHEDULER_STARTED = "Scheduler starting jobs:";
   public final static String JOB_TRIGGER_STARTED = "running: jobTrigger";
}
