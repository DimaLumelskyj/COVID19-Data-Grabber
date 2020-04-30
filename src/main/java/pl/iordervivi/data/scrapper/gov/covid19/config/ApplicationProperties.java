package pl.iordervivi.data.scrapper.gov.covid19.config;

import lombok.Getter;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.context.properties.ConfigurationProperties;

import java.time.Duration;

@ConfigurationProperties(prefix = "application")
@Getter
public class ApplicationProperties {

    @Value("${application.timezone:UTC}")
    private String applicationTimezone;
    @Value("${application.job.data.url.provider:https://www.gov.pl/web/koronawirus/wykaz-zarazen-koronawirusem-sars-cov-2}")
    private String dataProviderUrl;
    @Value("${application.job.running.frequency:PT30S}")
    private Duration jobFrequency;

}
