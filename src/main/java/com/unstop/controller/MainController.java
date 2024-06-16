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
    public String homePage() {
        return "landing";
    }

    @PostMapping("/register")
    public String registerPage(@ModelAttribute User user, Model model) {
        System.out.println("User: "+user);
        model.addAttribute("message", "Registration Unsuccessful");

        if (userService.registerUser(user) != null) {
           model.addAttribute("message", "Registration Successful");
           
        }
        return "index";
    }
}
