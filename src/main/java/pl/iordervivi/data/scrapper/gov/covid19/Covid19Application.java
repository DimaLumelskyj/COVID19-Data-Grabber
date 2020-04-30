package pl.iordervivi.data.scrapper.gov.covid19;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.context.properties.EnableConfigurationProperties;
import pl.iordervivi.data.scrapper.gov.covid19.config.ApplicationProperties;

@SpringBootApplication
@EnableConfigurationProperties(ApplicationProperties.class)
public class Covid19Application {

	public static void main(String[] args) {
		SpringApplication.run(Covid19Application.class, args);
	}

}
