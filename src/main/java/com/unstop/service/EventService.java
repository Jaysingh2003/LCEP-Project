package com.unstop.service;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.unstop.model.Event;
import com.unstop.repository.EventRepository;

@Service
public class EventService {
	
	@Autowired
	private EventRepository eventRepository;
	
	public Event createEvent(Event event) {
		event.setEventPostTime(new Date());
		return eventRepository.save(event);
	}

}
