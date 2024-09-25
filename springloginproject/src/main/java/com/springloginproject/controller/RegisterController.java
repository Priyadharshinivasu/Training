package com.springloginproject.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.springloginproject.service.RegisterService;

@Controller
public class RegisterController {
	
	private RegisterService regService = new RegisterService();
	
	@RequestMapping(value="/register", method = RequestMethod.GET)
	public ModelAndView getRegisterForm() {
		return new ModelAndView("register");
	}
	
	@RequestMapping(value="/register", method = RequestMethod.POST)
	public ModelAndView registerUser(@RequestParam int userID,
            						 @RequestParam String username,
            						 @RequestParam String password,
            						 @RequestParam String location) {
		regService.RegisterNewUser(userID, username, password, location);
		return new ModelAndView("registersuccess") ;
	}

}
