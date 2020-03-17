package pl.iordervivi.data.scrapper.gov.covid19.domain;

import lombok.*;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;
import java.util.List;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Entity
@EqualsAndHashCode(of = "id")
@Table(name = "region", uniqueConstraints = @UniqueConstraint(
        columnNames = {"id"}))
public class Region {
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "region_id_seq")
    @SequenceGenerator(name = "region_id_seq", allocationSize = 1)
    private long id;

    @Column(nullable = false)
    @Size(max = 256, message = "Region character limit is 256.")
    @NotBlank(message = "Region cannot be null/blank.")
    private String region;

    /*
    @Column(nullable = false)
    @Size(max = 256, message = "County character limit is 256.")
    @NotBlank(message = "County cannot be null/blank.")
    private String county;
    */

    @OneToMany(mappedBy = "region", cascade = {CascadeType.PERSIST, CascadeType.REMOVE})
    //@OrderBy("seatRow, seatNumber")
    private List<Sick> sicks;
}
