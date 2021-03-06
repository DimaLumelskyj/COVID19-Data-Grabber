package pl.iordervivi.data.scrapper.gov.covid19.domain;

import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.RequiredArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;
import java.util.List;

@Getter
@Setter
@RequiredArgsConstructor
@Entity
@EqualsAndHashCode(of = "id")
@Table(name = "region")
public class Region {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "region_id_seq")
    @SequenceGenerator(name = "region_id_seq", allocationSize = 1)
    private long id;

    @Column(name = "region_name", nullable = false)
    @Size(max = 256, message = "Region character limit is 256.")
    @NotBlank(message = "Region cannot be null/blank.")
    private String region;

    @OneToMany(mappedBy = "region", cascade = {CascadeType.PERSIST, CascadeType.REMOVE})
    private List<DiseaseStatisticInRegion> diseasesStatisticInRegion;

    public Region(String regionName) {
        this.region = regionName;
    }
}
