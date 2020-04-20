package pl.iordervivi.data.scrapper.gov.covid19.config;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.deser.DeserializationProblemHandler;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import pl.iordervivi.data.scrapper.gov.covid19.util.UnMarshallingErrorHandler;

@Configuration
public class ModelMapperConfiguration {

    @Bean
    ObjectMapper modelMapper() {
        DeserializationProblemHandler deserializationProblemHandler = new UnMarshallingErrorHandler();
        return new ObjectMapper().addHandler(deserializationProblemHandler);
    }

}
