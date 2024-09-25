package com.springloginproject.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.springloginproject.dao.User;

@Service
public class LoginService {
	public User authenticateUser(String username, String password) {
		RegisterService rs = new RegisterService();
		List<User> users = rs.getUsers();
		for(User u:users) {
			if(u.getUsername().equals(username) && u.getPassword().equals(password)) {
				return u;
			}
		}
		return null;
	}
	
}
