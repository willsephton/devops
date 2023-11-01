package org.solent.devops.user.spring.map.repository;

import org.solent.devops.user.model.MapPoint;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface MapPointRepository extends JpaRepository<MapPoint,Long>{

}
