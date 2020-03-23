package pl.iordervivi.data.scrapper.gov.covid19.service;

import org.springframework.stereotype.Service;
import pl.iordervivi.data.scrapper.gov.covid19.domain.Region;
import pl.iordervivi.data.scrapper.gov.covid19.domain.Sick;
import pl.iordervivi.data.scrapper.gov.covid19.dto.SickInRegionsDto;
import pl.iordervivi.data.scrapper.gov.covid19.repo.RegionRepository;
import pl.iordervivi.data.scrapper.gov.covid19.repo.SickRepository;

import java.time.LocalDateTime;
import java.util.List;
import java.util.Optional;

@Service
public class SickService {
    private final SickRepository sickRepository;
    private final RegionRepository regionRepository;

    public SickService(SickRepository sickRepository, RegionRepository regionRepository) {
        this.sickRepository = sickRepository;
        this.regionRepository = regionRepository;
    }

    void addSick(List<SickInRegionsDto> sickInRegionsDtos, LocalDateTime now, long step) {
        long sick;
        long death;
        for (SickInRegionsDto sickInRegionsDTO : sickInRegionsDtos) {
            sick = 0;
            death = 0;
            Optional<Region> region = regionRepository.findByRegion(sickInRegionsDTO.getRegionName());
            if (region.isEmpty()) {
                String er = "Region not found in DB during adding sick data to the database: " + sickInRegionsDTO.getRegionName();
                throw new NullPointerException(er);
            }
            if (sickInRegionsDTO.getTotalSickInRegion() != null) {
                sick = sickInRegionsDTO.getTotalSickInRegion();
            }
            if (sickInRegionsDTO.getTotalDeathsInRegion() != null) {
                death = sickInRegionsDTO.getTotalDeathsInRegion();
            }
            sickRepository.save(new Sick(sick, death, now, step, region.get()));
        }
    }

    long getCurrentStep() {
        Optional<Sick> sick = sickRepository.findTopByOrderByTimeStepDesc();
        return sick.map(value -> value.getTimeStep() + 1).orElse(1L);
    }

    boolean ifSameDataInPreviousStep(Optional<SickInRegionsDto> totalSickInRegionsDto, long step) {
        Optional<Region> region = regionRepository.findByRegion("Cała Polska");
        assert region.isPresent();
        if (step == 1) {
            return false;
        }
        Optional<Sick> sick = sickRepository.findByRegionAndTimeStep(region.get(), step - 1);
        assert sick.isPresent();
        assert totalSickInRegionsDto.isPresent();
        return sick.get().getTotalSickInRegion() == totalSickInRegionsDto.get().getTotalSickInRegion() &&
                sick.get().getTotalDeathsInRegion() == totalSickInRegionsDto.get().getTotalDeathsInRegion();
    }
}
