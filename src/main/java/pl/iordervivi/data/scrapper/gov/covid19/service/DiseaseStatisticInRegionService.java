package pl.iordervivi.data.scrapper.gov.covid19.service;

import org.springframework.stereotype.Service;
import pl.iordervivi.data.scrapper.gov.covid19.config.LogResourceText;
import pl.iordervivi.data.scrapper.gov.covid19.domain.DiseaseStatisticInRegion;
import pl.iordervivi.data.scrapper.gov.covid19.domain.Region;
import pl.iordervivi.data.scrapper.gov.covid19.dto.DiseaseStatisticInRegionDto;
import pl.iordervivi.data.scrapper.gov.covid19.repo.DiseaseStatisticInRegionRepository;
import pl.iordervivi.data.scrapper.gov.covid19.repo.RegionRepository;

import java.time.LocalDateTime;
import java.util.List;
import java.util.Optional;

@Service
public class DiseaseStatisticInRegionService {
    private final DiseaseStatisticInRegionRepository diseaseStatisticInRegionRepository;
    private final RegionRepository regionRepository;

    public DiseaseStatisticInRegionService(DiseaseStatisticInRegionRepository diseaseStatisticInRegionRepository,
                                           RegionRepository regionRepository) {
        this.diseaseStatisticInRegionRepository = diseaseStatisticInRegionRepository;
        this.regionRepository = regionRepository;
    }

    void addSick(List<DiseaseStatisticInRegionDto> DiseaseStatisticInRegionDtos,
                 LocalDateTime now,
                 long step) {
        for (DiseaseStatisticInRegionDto DiseaseStatisticInRegionDTO : DiseaseStatisticInRegionDtos) {
            Optional<Region> region = regionRepository.findByRegion(DiseaseStatisticInRegionDTO.getRegionName());
            if (region.isEmpty()) {
                String er = "Region not found in DB during adding sick data to the database: " + DiseaseStatisticInRegionDTO.getRegionName();
                throw new IllegalArgumentException(er);
            }
            long sick = 0;
            if (DiseaseStatisticInRegionDTO.getTotalSickInRegion() != null)
                sick = DiseaseStatisticInRegionDTO.getTotalSickInRegion();
            long death = 0;
            if (DiseaseStatisticInRegionDTO.getTotalDeathsInRegion() != null)
                death = DiseaseStatisticInRegionDTO.getTotalDeathsInRegion();
            diseaseStatisticInRegionRepository.save(new DiseaseStatisticInRegion(sick, death, now, step, region.get()));
        }
    }

    long getCurrentStep() {
        Optional<DiseaseStatisticInRegion> sick = diseaseStatisticInRegionRepository.findTopByOrderByTimeStepDesc();
        return sick.map(value -> value.getTimeStep() + 1).orElse(1L);
    }

    boolean ifSameDataInPreviousStep(DiseaseStatisticInRegionDto totalDiseaseStatisticInRegionDto, long step) {
        Optional<Region> region = regionRepository.findByRegion("Cała Polska");
        if (region.isEmpty()) {
            throw new IllegalArgumentException(LogResourceText.DATA_SCRAPPING_NULL_OBJECT);
        }

        if (step == 1) {
            return false;
        }
        Optional<DiseaseStatisticInRegion> diseaseStatisticInRegionOptional = diseaseStatisticInRegionRepository
                .findByRegionAndTimeStep(region.get(), step - 1);
        if (diseaseStatisticInRegionOptional.isPresent() && totalDiseaseStatisticInRegionDto == null) {
            throw new IllegalArgumentException(LogResourceText.DATA_SCRAPPING_NULL_OBJECT
                    + "ifSameDataInPreviousStep-> obj: diseaseStatisticInRegionOptional or totalDiseaseStatisticInRegionDto");
        }
        DiseaseStatisticInRegion diseaseStatisticInRegion = diseaseStatisticInRegionOptional.get();
        return diseaseStatisticInRegion.getTotalDiseaseCasesInRegion() == totalDiseaseStatisticInRegionDto.getTotalSickInRegion() &&
                diseaseStatisticInRegion.getTotalDeathsInRegion() == totalDiseaseStatisticInRegionDto.getTotalDeathsInRegion();
    }
}
