package com.springloginproject.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import com.springloginproject.dao.User;

@Service
public class RegisterService {
	private static List<User> userList = new ArrayList<>();
	
	public void RegisterNewUser(int userID, String username, String password, String location) {
		userList.add(new User(userID,username,password,location));
		System.out.println(userList);
	}
	public List<User> getUsers(){
		return userList;
	}
	
}	
