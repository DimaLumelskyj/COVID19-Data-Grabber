package pl.iordervivi.data.scrapper.gov.covid19.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import pl.iordervivi.data.scrapper.gov.covid19.domain.DiseaseStatisticInRegion;
import pl.iordervivi.data.scrapper.gov.covid19.domain.Region;

import java.util.Optional;

@Repository
public interface DiseaseStatisticInRegionRepository extends JpaRepository<DiseaseStatisticInRegion, Integer> {

    Optional<DiseaseStatisticInRegion> findByRegionAndTimeStep(Region region, long timeStep);

    Optional<DiseaseStatisticInRegion> findTopByOrderByTimeStepDesc();

}