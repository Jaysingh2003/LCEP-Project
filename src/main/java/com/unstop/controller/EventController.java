package com.unstop.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.unstop.model.Event;
import com.unstop.model.User;
import com.unstop.service.EventService;
import com.unstop.service.UserService;

@Controller
@RequestMapping("/lcep/")
public class EventController {
	
	@Autowired
	private EventService eventService;
	
	@Autowired
	private UserService userService;
	
	@PostMapping("/events")
	public String createEvent(@ModelAttribute Event event, @RequestParam String userId, Model model) {
		
		System.out.println(userId);
		User user = userService.getUserById(Long.valueOf(userId));
		
		event.setEventOrganizer(user);
		
		eventService.createEvent(event);
		System.out.println(event);
		model.addAttribute("message", "Your Event registered Successfully");
		model.addAttribute("messageColor", "success");
		return "index";
	}

}
