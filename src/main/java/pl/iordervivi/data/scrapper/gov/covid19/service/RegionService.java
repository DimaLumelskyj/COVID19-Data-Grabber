package pl.iordervivi.data.scrapper.gov.covid19.service;

import org.springframework.stereotype.Service;
import pl.iordervivi.data.scrapper.gov.covid19.domain.Region;
import pl.iordervivi.data.scrapper.gov.covid19.dto.SickInRegionsDto;
import pl.iordervivi.data.scrapper.gov.covid19.repo.RegionRepository;

import java.util.List;

@Service
public class RegionService {
    private final RegionRepository regionRepository;

    public RegionService(RegionRepository regionRepository) {
        this.regionRepository = regionRepository;
    }

    void addRegions(List<SickInRegionsDto> sickInRegionsDtos) {
        for (SickInRegionsDto sickInRegionsDTO : sickInRegionsDtos) {
            if (!regionRepository.existsByRegion(sickInRegionsDTO.getRegionName())) {
                regionRepository.save(new Region(sickInRegionsDTO.getRegionName()));
            }
        }
    }

}
