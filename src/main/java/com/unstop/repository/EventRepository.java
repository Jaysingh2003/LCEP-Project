package com.unstop.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.unstop.model.Event;


@Repository
public interface EventRepository extends JpaRepository<Event, Long> {

}
