/**
 *
 * @author thesu
 */


package org.solent.spring.map.repository;

import java.util.List;
import org.solent.spring.map.model.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRepository extends JpaRepository<User,Long>{
    
    @Query("select u from User u where u.username = :username")
    public List<User> findByUsername(@Param("username")String username);

    @Query("select u from User u where u.firstName = :firstName and u.secondName = :secondName")
    public List<User> findByNames(@Param("firstName") String firstName, @Param("secondName") String secondName);
    
}