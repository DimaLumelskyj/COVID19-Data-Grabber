package pl.iordervivi.data.scrapper.gov.covid19.dto;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;

@Data
public class SickInRegionsDto {
    @JsonProperty("Województwo")
    private String regionName;

    @JsonProperty("Liczba")
    private Long totalSickInRegion;

    @JsonProperty("Liczba zgonów")
    private Long totalDeathsInRegion;

    @JsonProperty("Id")
    private String id;

}

