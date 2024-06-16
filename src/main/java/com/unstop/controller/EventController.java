package com.unstop.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.unstop.model.Event;
import com.unstop.service.EventService;

@Controller
@RequestMapping("/lcep/")
public class EventController {
	
	@Autowired
	private EventService eventService;
	
	@PostMapping("/events")
	public String createEvent(Model model) {
		eventService.createEvent(new Event());
		model.addAttribute("message", "Your Event registered Successfully");
		model.addAttribute("messageColor", "success");
		return "index";
	}

}
