package pl.iordervivi.data.scrapper.gov.covid19.config;

import lombok.AllArgsConstructor;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.env.Environment;

import javax.annotation.PostConstruct;
import java.util.TimeZone;

@Configuration
@AllArgsConstructor
public class LocaleConfiguration {

    private final Environment env;

    @PostConstruct
    public void init() {
        String timezone = env.getProperty("application.timezone");
        TimeZone.setDefault(TimeZone.getTimeZone(timezone));
    }
}