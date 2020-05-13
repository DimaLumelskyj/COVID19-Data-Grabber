package pl.iordervivi.data.scrapper.gov.covid19.config;

import lombok.Getter;
import lombok.Setter;
import org.springframework.boot.context.properties.ConfigurationProperties;

import java.time.Duration;

@ConfigurationProperties(prefix = "application")
@Getter
@Setter
public class ApplicationProperties {

    private String timezone;
    private String jobDataUrlProvider;
    private Duration jobRunningFrequency;

}
