package pl.iordervivi.data.scrapper.gov.covid19.config;

import lombok.Getter;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Component;

import javax.validation.constraints.PositiveOrZero;

@Component
@Configuration
@Getter
public class ApplicationProperties {
    private final int TOTAL_NUMBER_OF_REGIONS_IN_POLAND_WITH_WHOLE_COUNTRY = 17;
    private final String[] REGION_NAME_VALIDATION_SET = {"Cała Polska",
            "dolnośląskie",
            "kujawsko-pomorskie",
            "lubelskie",
            "lubuskie",
            "łódzkie",
            "małopolskie",
            "mazowieckie",
            "opolskie",
            "podkarpackie",
            "podlaskie",
            "pomorskie",
            "śląskie",
            "świętokrzyskie",
            "warmińsko-mazurskie",
            "wielkopolskie",
            "zachodniopomorskie"};
    @Value("${application.timezone}")
    private String applicationTimezone;
    @Value("${job.web.scrap.frequency}")
    @PositiveOrZero
    private int frequency;
    @Value("${data.url.provider}")
    private String dataProviderUrl;

    public int getFrequencyInMilliseconds() {
        return frequency * 1000;
    }
}
