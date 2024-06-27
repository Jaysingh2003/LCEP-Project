package com.unstop.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.unstop.model.Event;
import com.unstop.model.User;
import com.unstop.service.EventService;
import com.unstop.service.UserService;

@Controller
@RequestMapping("/lcep")
public class EventController {
	
	@Autowired
	private EventService eventService ;
	
	@Autowired
	private UserService userService ;
	
	@PostMapping("/events")
	public String createEvent(@ModelAttribute Event event, @RequestParam("file") MultipartFile file, @RequestParam String userId, Model model, HttpServletRequest request ) throws IOException {
		System.out.println(userId);
		if (!file.isEmpty()) {
            event.setEventImage(file.getBytes()); // Save image as byte array
		}
		System.out.println(userId);
		User user = userService.getUserById(Long.valueOf(userId));
		
		
		event.setEventOrganizer(user);
		
		eventService.createEvent(event);
		System.out.println(event);
		
		model.addAttribute("message", "Your Event registered Successfully");
		model.addAttribute("alertType", "success");
        request.setAttribute("userId", userId);

		return "forward:/lcep/events/home";
	}
	@PostMapping("/events/home")
	public String getAllEvents(Model model, HttpServletRequest request){
		
		
		
		model.addAttribute("userId", request.getAttribute("userId"));
		List<Event> events = eventService.getAllEvents();
		System.out.println(events);
		model.addAttribute("events", events);
//         model.addAttribute("message", "Events added Successfully");
         model.addAttribute("alertType","success");
       
         return "index2";
		
	}
	

}