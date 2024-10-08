package com.springloginproject.dao;

public class User {
	private int userID;
	private String username;
	private String password;
	private String location;
	public User(int userID, String username, String password, String location) {
		super();
		this.userID = userID;
		this.username = username;
		this.password = password;
		this.location = location;
	}
	public int getUserID() {
		return userID;
	}
	public void setUserID(int userID) {
		this.userID = userID;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	@Override
	public String toString() {
		return "User [userID=" + userID + ", username=" + username + ", password=" + password + ", location=" + location
				+ "]";
	}
	

	

}
