package pl.iordervivi.data.scrapper.gov.covid19.config;


import org.quartz.JobDetail;
import org.quartz.SimpleTrigger;
import org.quartz.Trigger;
import org.quartz.spi.JobFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.beans.factory.config.PropertiesFactoryBean;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.io.ClassPathResource;
import org.springframework.scheduling.quartz.JobDetailFactoryBean;
import org.springframework.scheduling.quartz.SchedulerFactoryBean;
import org.springframework.scheduling.quartz.SimpleTriggerFactoryBean;
import pl.iordervivi.data.scrapper.gov.covid19.job.Covid19PolandDataScrapperJob;
import pl.iordervivi.data.scrapper.gov.covid19.job.SpringJobFactory;

import java.io.IOException;
import java.util.Properties;

@Configuration
public class SchedulerConfiguration {

    private static Logger logger = LoggerFactory.getLogger(SchedulerConfiguration.class);

    @Bean
    public JobFactory jobFactory(ApplicationContext applicationContext) {
        SpringJobFactory jobFactory = new SpringJobFactory();
        jobFactory.setApplicationContext(applicationContext);
        return jobFactory;
    }

    @Bean
    public SchedulerFactoryBean schedulerFactoryBean(JobFactory jobFactory,
                                                     Trigger trigger) throws IOException {
        SchedulerFactoryBean factory = new SchedulerFactoryBean();
        factory.setJobFactory(jobFactory);
        factory.setQuartzProperties(quartzProperties());
        factory.setTriggers(trigger);
        logger.info("Scheduler starting jobs...");
        return factory;
    }

    @Bean
    public SimpleTriggerFactoryBean jobTrigger(
            @Qualifier("DataForCovid19StatisticWebScrapperJobDetail") JobDetail jobDetail,
            @Value("${job.frequency}") long frequency) {
        logger.info("running: jobTrigger");
        SimpleTriggerFactoryBean factoryBean = new SimpleTriggerFactoryBean();
        factoryBean.setJobDetail(jobDetail);
        factoryBean.setStartDelay(0L);
        factoryBean.setRepeatInterval(frequency);
        factoryBean.setRepeatCount(SimpleTrigger.REPEAT_INDEFINITELY);
        return factoryBean;
    }

    @Bean
    public Properties quartzProperties() throws IOException {
        PropertiesFactoryBean propertiesFactoryBean = new PropertiesFactoryBean();
        propertiesFactoryBean.setLocation(new ClassPathResource(
                "/quartz.properties"));
        propertiesFactoryBean.afterPropertiesSet();
        return propertiesFactoryBean.getObject();
    }

    @Bean
    public JobDetailFactoryBean DataForCovid19StatisticWebScrapperJobDetail() {
        JobDetailFactoryBean factoryBean = new JobDetailFactoryBean();
        factoryBean.setJobClass(Covid19PolandDataScrapperJob.class);
        factoryBean.setDurability(true);
        return factoryBean;
    }
}
