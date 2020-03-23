package pl.iordervivi.data.scrapper.gov.covid19.service;

import org.springframework.stereotype.Service;
import pl.iordervivi.data.scrapper.gov.covid19.dto.SickInRegionsDto;

import java.util.List;
import java.util.Optional;

@Service("")
public class SickInRegionsDtoService {
    Optional<SickInRegionsDto> ifExistsTotalSickEntryInRegionDtoObjectList(List<SickInRegionsDto> sickInRegionsDtoList) {
        for (SickInRegionsDto sickInRegionsDTO : sickInRegionsDtoList) {
            if (sickInRegionsDTO.getRegionName().equals("Cała Polska")) {
                return Optional.of(sickInRegionsDTO);
            }
        }
        return Optional.empty();
    }
}
