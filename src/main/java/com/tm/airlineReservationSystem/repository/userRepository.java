package com.tm.airlineReservationSystem.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.tm.airlineReservationSystem.model.User;

@Repository
public interface userRepository extends JpaRepository<User, Integer>
{
	@Query(value = "select u from User u where u.username=:username and u.password=:password")
	public User findByUsername(@Param("username") String username, @Param("password") String password);
	public User findByUserId(int userId);
}