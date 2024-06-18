package com.unstop.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.unstop.model.User;

public interface UserRepository extends JpaRepository<User, Long> {

	User findByEmail(String email);

}
