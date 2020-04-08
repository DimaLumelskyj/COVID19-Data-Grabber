package pl.iordervivi.data.scrapper.gov.covid19.config;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.deser.DeserializationProblemHandler;
import lombok.Getter;
import org.springframework.stereotype.Component;
import pl.iordervivi.data.scrapper.gov.covid19.util.UnMarshallingErrorHandler;

@Component
@Getter
public class ModelMapperConfiguration {
    private final ObjectMapper mapper;

    public ModelMapperConfiguration() {
        this.mapper = new ObjectMapper();
        DeserializationProblemHandler deserializationProblemHandler = new UnMarshallingErrorHandler();
        mapper.addHandler(deserializationProblemHandler);
    }

}
