package pl.iordervivi.data.scrapper.gov.covid19.service;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import pl.iordervivi.data.scrapper.gov.covid19.repo.DiseaseStatisticInRegionRepository;
import pl.iordervivi.data.scrapper.gov.covid19.repo.RegionRepository;

import static org.mockito.MockitoAnnotations.initMocks;

class DiseaseStatisticInRegionServiceTest {

    @InjectMocks
    private DiseaseStatisticInRegionService diseaseStatisticInRegionService;

    @Mock
    private DiseaseStatisticInRegionRepository diseaseStatisticInRegionRepository;

    @Mock
    private RegionRepository regionRepository;

    @BeforeEach
    void setUp() {
        initMocks(this);
    }


    @Test
    void getCurrentStep() {

    }

    @Test
    void ifSameDataInPreviousStep() {

    }
}