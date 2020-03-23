package pl.iordervivi.data.scrapper.gov.covid19.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import pl.iordervivi.data.scrapper.gov.covid19.domain.Region;
import pl.iordervivi.data.scrapper.gov.covid19.domain.Sick;

import javax.transaction.Transactional;
import java.util.Optional;

@Transactional
@Repository
public interface SickRepository extends JpaRepository<Sick, Integer> {
    Optional<Sick> findByRegionAndTimeStep(Region region, long timeStep);
    Optional<Sick> findTopByOrderByTimeStepDesc();
}
