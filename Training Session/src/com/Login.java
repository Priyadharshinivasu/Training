package com;

public class Login {
	
	public String passwordLogin(String userName,String password) {
		return "logged in successfully using password";
	}
	public String otpLogin(String userName,int otp) {
		return "logged in successfully using otp";
	}
	public String phoneNoLogin(String userName,long PhoneNo) {
		return "logged in successfully using phone number";
	}

	public static void main(String[] args) {
		
		Login l1 = new Login();
		System.out.println(l1.passwordLogin("Priya","password123")+"\n"+ l1.otpLogin("Priya", 1234)+"\n"+ l1.phoneNoLogin("Priya",9876543210l));
		
		
	}

}
