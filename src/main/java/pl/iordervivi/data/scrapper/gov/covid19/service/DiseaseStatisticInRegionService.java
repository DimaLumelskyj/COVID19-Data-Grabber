package pl.iordervivi.data.scrapper.gov.covid19.service;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import pl.iordervivi.data.scrapper.gov.covid19.domain.DiseaseStatisticInRegion;
import pl.iordervivi.data.scrapper.gov.covid19.domain.Region;
import pl.iordervivi.data.scrapper.gov.covid19.dto.DiseaseStatisticInRegionDto;
import pl.iordervivi.data.scrapper.gov.covid19.repo.DiseaseStatisticInRegionRepository;
import pl.iordervivi.data.scrapper.gov.covid19.repo.RegionRepository;

import java.time.LocalDateTime;
import java.util.List;
import java.util.Optional;

@Service
@RequiredArgsConstructor
public class DiseaseStatisticInRegionService {
    private final DiseaseStatisticInRegionRepository diseaseStatisticInRegionRepository;
    private final RegionRepository regionRepository;


    void addSick(List<DiseaseStatisticInRegionDto> diseaseStatisticInRegionDtoList,
                 LocalDateTime now,
                 long step) {
        for (DiseaseStatisticInRegionDto diseaseStatisticInRegionDto : diseaseStatisticInRegionDtoList) {

            Optional<Region> region = regionRepository.findByRegion(diseaseStatisticInRegionDto.getRegionName());

            if (region.isEmpty()) {
                String er = "Region not found in DB during adding sick data to the database: " + diseaseStatisticInRegionDto.getRegionName();
                throw new IllegalArgumentException(er);
            }

            long sick = diseaseStatisticInRegionDto.getTotalDiseaseCasesInRegion();
            long death = diseaseStatisticInRegionDto.getTotalDeathCasesInRegion();

            diseaseStatisticInRegionRepository.save(new DiseaseStatisticInRegion(sick, death, now, step, region.get()));
        }
    }

    long getCurrentStep() {
        Optional<DiseaseStatisticInRegion> sick = diseaseStatisticInRegionRepository.findTopByOrderByTimeStepDesc();
        return sick.map(value -> value.getTimeStep() + 1).orElse(1L);
    }

    boolean ifSameDataInPreviousStep(DiseaseStatisticInRegionDto totalDiseaseStatisticInRegionDto, long step) {

        if (totalDiseaseStatisticInRegionDto == null || step <= 0) {
            throw new IllegalArgumentException("Object can't be empty:"
                    + "ifSameDataInPreviousStep-> obj: totalDiseaseStatisticInRegionDto, or wrong step: " + step);
        }

        Optional<Region> region = regionRepository.findByRegion("Cała Polska");

        if (region.isEmpty()) {
            throw new IllegalArgumentException("Object region can't be empty");
        }

        if (step == 1) {
            return false;
        }

        DiseaseStatisticInRegion diseaseStatisticInRegion = diseaseStatisticInRegionRepository
                .findByRegionAndTimeStep(region.get(), step - 1).orElseThrow(() -> new IllegalArgumentException("Object can't be empty:"
                        + "ifSameDataInPreviousStep-> obj: diseaseStatisticInRegionOptional empty"));

        return diseaseStatisticInRegion.getDiseaseCasesInRegion() == totalDiseaseStatisticInRegionDto.getTotalDiseaseCasesInRegion() &&
                diseaseStatisticInRegion.getDeathCasesInRegion() == totalDiseaseStatisticInRegionDto.getTotalDeathCasesInRegion();
    }
}
