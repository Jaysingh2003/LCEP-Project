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
		User newUser = null;
		if(!userRepository.existsByEmail(user.getEmail())) {
			
			newUser =  userRepository.save(user);
		}
		
		return newUser;
	}

	public User userLogin(User user) {

		if (user.getEmail() == null) {
			return null;
		}
		User foundUser = userRepository.findByEmail(user.getEmail());

		if (foundUser != null && foundUser.getPass().equals(user.getPass())) {
			return foundUser;
		}

		return null;

	}

	public User getUserById(Long userId) {

		return userRepository.findById(userId).get();

	}
}
