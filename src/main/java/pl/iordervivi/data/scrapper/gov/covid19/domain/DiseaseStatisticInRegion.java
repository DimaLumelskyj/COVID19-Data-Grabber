package pl.iordervivi.data.scrapper.gov.covid19.domain;

import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.RequiredArgsConstructor;

import javax.persistence.*;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import java.time.LocalDateTime;

@Data
@RequiredArgsConstructor
@Entity
@EqualsAndHashCode(of = "id")
@Table(name = "sick",
        uniqueConstraints = @UniqueConstraint(columnNames = {"id"}))
public class DiseaseStatisticInRegion {
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "sick_id_seq")
    @SequenceGenerator(name = "sick_id_seq", allocationSize = 1)
    private long id;

    @ManyToOne(optional = false, fetch = FetchType.LAZY)
    @JoinColumn(foreignKey = @ForeignKey(name = "region_id_fkey"))
    private Region region;

    @Column(name = "total_sick_in_region", nullable = false)
    @Min(value = 0, message = "Min value is 0")
    @NotNull(message = "Number of sick people  on covid19 cannot be null/blank.")
    private long diseaseCasesInRegion;

    @Column(name = "total_deaths_in_region", nullable = false)
    @Min(value = 0, message = "Min value is 0")
    @NotNull(message = "Number of deaths from covid19 cannot be null/blank.")
    private long deathCasesInRegion;

    @Column(nullable = false, updatable = false)
    private LocalDateTime addedAt;

    @Column(nullable = false, updatable = false)
    private long timeStep;

    public DiseaseStatisticInRegion(long diseaseCasesInRegion,
                                    long deathCasesInRegion,
                                    LocalDateTime addedAt,
                                    long timeStep,
                                    Region region) {
        this.diseaseCasesInRegion = diseaseCasesInRegion;
        this.deathCasesInRegion = deathCasesInRegion;
        this.addedAt = addedAt;
        this.timeStep = timeStep;
        this.region = region;
    }
}
