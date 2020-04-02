package pl.iordervivi.data.scrapper.gov.covid19.config;

import lombok.Getter;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Component;

@Component
@Configuration
@Getter
public class ApplicationProperties {
    @Value("${application.timezone}")
    private String applicationTimezone;
    @Value("${job.web.scrap.frequency}")
    private int frequency;
    @Value("${data.url.provider}")
    private String dataProviderUrl;

    public int getFrequencyInMilliseconds() {
        return frequency * 1000;
    }
}
