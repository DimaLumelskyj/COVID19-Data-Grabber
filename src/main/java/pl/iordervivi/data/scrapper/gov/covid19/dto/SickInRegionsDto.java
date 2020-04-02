package pl.iordervivi.data.scrapper.gov.covid19.dto;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;

@Data
public class SickInRegionsDto {
    @JsonProperty("region")
    private String regionName;

    @JsonProperty("sick")
    private Long totalSickInRegion;

    @JsonProperty("deaths")
    private Long totalDeathsInRegion;

    @JsonProperty("Id")
    private String id;

}

