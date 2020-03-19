package pl.iordervivi.data.scrapper.gov.covid19.domain;

import lombok.*;

import javax.persistence.*;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import java.time.LocalDateTime;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Data
@Entity
@EqualsAndHashCode(of = "id")
@Table(name = "sick", uniqueConstraints = @UniqueConstraint(
        columnNames = {"id"}))
public class Sick {
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "sick_id_seq")
    @SequenceGenerator(name = "sick_id_seq", allocationSize = 1)
    private long id;

    @ManyToOne(optional = false, fetch = FetchType.LAZY)
    @JoinColumn(foreignKey = @ForeignKey(name = "region_id_fkey"))
    private Region region;

    @Column(nullable = false)
    @Min(value = 0, message = "Min value is 0")
    @NotNull(message = "Number of sick people  on covid19 cannot be null/blank.")
    private long totalSickInRegion;

    @Column(nullable = false)
    @Min(value = 0, message = "Min value is 0")
    @NotNull(message = "Number of deaths from covid19 cannot be null/blank.")
    private long totalDeathsInRegion;

    @Column(nullable = false, updatable = false)
    private LocalDateTime addedAt;

    @Column(nullable = false, updatable = false)
    private long timeStep;

    public Sick(long totalSickInRegion, long totalDeathsInRegion, LocalDateTime addedAt, long timeStep, Region region) {
        setTotalSickInRegion(totalSickInRegion);
        setTotalDeathsInRegion(totalDeathsInRegion);
        setAddedAt(addedAt);
        setTimeStep(timeStep);
        setRegion(region);
    }
}
