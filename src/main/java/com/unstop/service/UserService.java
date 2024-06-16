package com.unstop.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.unstop.model.User;
import com.unstop.repository.UserRepository;

@Service
public class UserService {
	
	@Autowired
	private UserRepository userRepository;
	
	
	public User registerUser(User user) {
		return userRepository.save(user);
	}
	
	

}
