package com.unstop.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.unstop.model.Event;
import com.unstop.repository.EventRepository;

@Service
public class EventService {
	
	@Autowired
	private EventRepository eventRepository;
	
	public Event createEvent(Event event) {
		
		return eventRepository.save(event);
	}

}
