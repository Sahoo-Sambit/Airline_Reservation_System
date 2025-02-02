package com.tm.airlineReservationSystem.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.tm.airlineReservationSystem.model.Ticket;
import com.tm.airlineReservationSystem.model.User;

@Repository
public interface ticketRepository extends CrudRepository<Ticket, Integer>
{
	public Ticket findByTicketId(int ticketId);
	public List<Ticket> findByUserDetails(User userDetails);
	public List<Ticket> findByUserDetailsUserId(int userId);
}