package pl.iordervivi.data.scrapper.gov.covid19.config;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.InjectMocks;
import org.mockito.MockitoAnnotations;
import org.springframework.test.util.ReflectionTestUtils;

import static org.junit.jupiter.api.Assertions.assertEquals;

class ApplicationPropertiesTest {

    @InjectMocks
    private ApplicationProperties applicationProperties = new ApplicationProperties();

    @BeforeEach
    void setUp() {
        MockitoAnnotations.initMocks(this);
    }

    @Test
    void testToGetFrequencyInMillisecondsValidCalculation() {
        //given
        int frequency = 20;
        ReflectionTestUtils.setField(applicationProperties,
                "frequency",
                frequency);
        //then
        assertEquals(20000, applicationProperties.getFrequencyInMilliseconds());
    }

    @Test
    void testToGetFrequencyInMillisecondsZeroValueValidCalculation() {
        //given
        int frequency = 0;
        ReflectionTestUtils.setField(applicationProperties,
                "frequency",
                frequency);
        //then
        assertEquals(0, applicationProperties.getFrequencyInMilliseconds());
    }

}