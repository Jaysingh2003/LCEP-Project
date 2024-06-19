package com.unstop.controller;

import org.apache.coyote.Request;
import org.apache.coyote.Response;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.unstop.model.User;
import com.unstop.service.UserService;

@Controller
@RequestMapping("/lcep")
public class MainController {

    @Autowired
    private UserService userService;

    @GetMapping("/")
    public String homePage(Model model) {
     
    	model.addAttribute("hidden","none");
    	
    	return "landing";
       
    }

    @PostMapping("/register")
    public String registerPage(@ModelAttribute User user, Model model) {
        System.out.println("User: "+user);
       
        model.addAttribute("message", "Registration Unsuccessful");
    	model.addAttribute("alertType","danger");
    	User registeredUser = userService.registerUser(user);
        if (registeredUser != null) {
        	model.addAttribute("alertType","success");
           model.addAttribute("message", "Registration Successful");
           model.addAttribute("userId", registeredUser.getId());
           
        }
        return "index";
    }
    @PostMapping("/login")
    public String loginPage(@ModelAttribute User user, Model model) {
    	 
    	System.out.println("User: "+user);
   	User loggedInUser = userService.userLogin(user);
    	if ( loggedInUser != null) {
    		
             model.addAttribute("message", "login Successful");
             model.addAttribute("alertType","success");
             model.addAttribute("userId", loggedInUser.getId());
             return "index";
           
          }
    	model.addAttribute("hidden","block");
    	model.addAttribute("message","Authentication Failed");
    	model.addAttribute("alertType","danger");
    	return "landing";
    	
    }
    
    

    
}
