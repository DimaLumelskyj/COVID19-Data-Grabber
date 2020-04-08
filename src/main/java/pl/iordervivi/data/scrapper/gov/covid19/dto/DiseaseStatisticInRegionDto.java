package pl.iordervivi.data.scrapper.gov.covid19.dto;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.RequiredArgsConstructor;

@Data
@AllArgsConstructor
@RequiredArgsConstructor
public class DiseaseStatisticInRegionDto {
    @JsonProperty("region")
    private String regionName;

    @JsonProperty("sick")
    private Long totalDiseaseCasesInRegion = 0L;

    @JsonProperty("deaths")
    private Long totalDeathCasesInRegion = 0L;

    @JsonProperty("Id")
    private String id;

}

