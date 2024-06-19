package com.unstop;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ConfigurableApplicationContext;

import com.unstop.repository.UserRepository;
import com.unstop.service.UserService;

@SpringBootApplication
public class LcepApplication {

	@Autowired
	private UserRepository userRepository;

	public static void main(String[] args) {

		SpringApplication.run(LcepApplication.class, args);
//		ConfigurableApplicationContext context = SpringApplication.run(LcepApplication.class, args);

		System.out.println("Server is started.");
//
//		LcepApplication lcepApplication = context.getBean(LcepApplication.class);
//		lcepApplication.userRepository.deleteAll();
//		System.out.println(lcepApplication.userRepository);
	}

}
