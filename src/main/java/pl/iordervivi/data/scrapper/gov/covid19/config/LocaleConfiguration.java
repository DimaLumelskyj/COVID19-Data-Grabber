package pl.iordervivi.data.scrapper.gov.covid19.config;

import lombok.RequiredArgsConstructor;
import org.springframework.context.annotation.Configuration;

import javax.annotation.PostConstruct;
import java.util.TimeZone;

@Configuration
@RequiredArgsConstructor
public class LocaleConfiguration {

    private final ApplicationProperties applicationProperties;

    @PostConstruct
    public void init() {
        TimeZone.setDefault(TimeZone.getTimeZone(applicationProperties.getApplicationTimezone()));
    }
}