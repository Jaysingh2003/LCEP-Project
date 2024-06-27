package com.unstop.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.file.Paths;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	
	@Value("${uploadDir}")
	private String uploadFolder;
	
	@Autowired
	private EventService eventService ;
	
	@Autowired
	private UserService userService ;
	
	@PostMapping("/events")
	public String createEvent(@ModelAttribute Event event, @RequestParam("file") MultipartFile file, @RequestParam String userId, Model model, HttpServletRequest request ) throws IOException {
		
		try {
			// String uploadDirectory = System.getProperty("user.dir") + uploadFolder;
			String uploadDirectory = request.getServletContext().getRealPath(uploadFolder);
			System.out.println("uploadDirectory:: " + uploadDirectory);
			String fileName = file.getOriginalFilename();
			String filePath = Paths.get(uploadDirectory, fileName).toString();
			System.out.println("FileName: " + file.getOriginalFilename());
			if (fileName == null || fileName.contains("..")) {
				 request.setAttribute("userId", userId);
				 request.setAttribute("message", "Sorry! Filename contains invalid path sequence " + fileName);

					return "forward:/lcep/events/home";
			}
			
			try {
				File dir = new File(uploadDirectory);
				if (!dir.exists()) {
					System.out.println("Folder Created");
					dir.mkdirs();
				}
				// Save the file locally
				BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(new File(filePath)));
				stream.write(file.getBytes());
				stream.close();
			} catch (Exception e) {
				System.out.println("in catch");
				e.printStackTrace();
			}
			
			String imageData = uploadFolder + File.separator + fileName;
		
		System.out.println(userId);
		if (!file.isEmpty()) {
            event.setEventImage(imageData); // Save image as byte array
		}
		System.out.println(userId);
		User user = userService.getUserById(Long.valueOf(userId));
		
		
		event.setEventOrganizer(user);
		
		event = eventService.createEvent(event);
		System.out.println(event);
		
		request.setAttribute("message", "Your Event registered Successfully");
		model.addAttribute("alertType", "success");
        request.setAttribute("userId", userId);

		return "forward:/lcep/events/home";
		} finally {
			
		}
	}
	@PostMapping("/events/home")
	public String getAllEvents(Model model, HttpServletRequest request){
		
		
		
		model.addAttribute("userId", request.getAttribute("userId"));
		model.addAttribute("message", request.getAttribute("message"));
		List<Event> events = eventService.getAllEvents();
		System.out.println(events);
		model.addAttribute("events", events);
//         model.addAttribute("message", "Events added Successfully");
         model.addAttribute("alertType","success");
       
         return "index2";
		
	}
	

}