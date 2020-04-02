package pl.iordervivi.data.scrapper.gov.covid19.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import pl.iordervivi.data.scrapper.gov.covid19.domain.Region;

import java.util.Optional;

@Repository
public interface RegionRepository extends JpaRepository<Region, Integer> {
    Optional<Region> findByRegion(String region);
    boolean existsByRegion(String region);
}
