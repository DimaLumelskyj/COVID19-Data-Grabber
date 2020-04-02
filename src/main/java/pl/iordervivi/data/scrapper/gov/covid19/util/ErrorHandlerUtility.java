package pl.iordervivi.data.scrapper.gov.covid19.util;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.deser.DeserializationProblemHandler;
import org.springframework.stereotype.Component;

import java.io.IOException;

@Component
public class ErrorHandlerUtility {
    public static class UnMarshallingErrorHandler extends DeserializationProblemHandler {
        @Override
        public boolean handleUnknownProperty(DeserializationContext ctxt, JsonParser jp, JsonDeserializer deserializer, Object beanOrClass, String propertyName) throws IOException {
            boolean result = false;
            super.handleUnknownProperty(ctxt, jp, deserializer, beanOrClass, propertyName);
            System.out.println("Property with name '" + propertyName + "' doesn't exist in Class of type '" + beanOrClass.getClass().getName() + "'");
            return true;
        }
    }
}
