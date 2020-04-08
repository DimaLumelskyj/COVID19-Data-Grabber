package pl.iordervivi.data.scrapper.gov.covid19.service;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import pl.iordervivi.data.scrapper.gov.covid19.domain.Region;
import pl.iordervivi.data.scrapper.gov.covid19.dto.DiseaseStatisticInRegionDto;
import pl.iordervivi.data.scrapper.gov.covid19.repo.RegionRepository;

import java.util.List;

@Service
@RequiredArgsConstructor
public class RegionService {
    private final RegionRepository regionRepository;

    void addRegions(List<DiseaseStatisticInRegionDto> DiseaseStatisticInRegionsDto) {
        for (DiseaseStatisticInRegionDto DiseaseStatisticInRegionDTO : DiseaseStatisticInRegionsDto) {
            if (!regionRepository.existsByRegion(DiseaseStatisticInRegionDTO.getRegionName())) {
                regionRepository.save(new Region(DiseaseStatisticInRegionDTO.getRegionName()));
            }
        }
    }

}
