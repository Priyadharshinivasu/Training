package com.springloginproject.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.springloginproject.dao.User;
import com.springloginproject.service.LoginService;

@Controller
public class LoginController{
	
	private LoginService loginService = new LoginService();
	
	@RequestMapping(value="/login", method = RequestMethod.GET)
	public ModelAndView getLoginForm() {
		return new ModelAndView("login");
	}
	@RequestMapping(value="/login", method = RequestMethod.POST)
	public ModelAndView handleLogin(@RequestParam("username") String username, @RequestParam("password") String password) {
		User u = loginService.authenticateUser(username, password);
		if(u!=null) {
			ModelAndView mv = new ModelAndView("home");
			mv.addObject("user", u);
			return mv;
		}
		else {
			ModelAndView mv = new ModelAndView("login");
			mv.addObject("error", "Invalid Username or Password");
			return mv;
		}
	}
}





//package com.springloginproject.controller;
//
//import java.util.HashMap;
//import java.util.Map;
//
//import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestMethod;
//import org.springframework.web.bind.annotation.RequestParam;
//import org.springframework.web.servlet.ModelAndView;
//
//@Controller
//public class LoginController {
//	@RequestMapping(value = "/login", method = RequestMethod.GET)
//	public ModelAndView login() {
//		return new ModelAndView("login");
//	}
//
//	@RequestMapping(value = "/login", method = RequestMethod.POST)
//	public ModelAndView checkLogin(@RequestParam(name = "username") String username,
//			@RequestParam(name = "password") String password) {
//		ModelAndView mv = new ModelAndView();
//		mv.addObject("username", username);
//		mv.addObject("password", password);
//		Map<String, String> map = new HashMap<>();
//		map.put("Priya", "pass123");
//		map.put("Abi", "pass456");
//		map.put("Varshika", "pass789");
//		map.put("Pavithra", "pass987");
//		map.put("Preeti", "pass654");
//		for (Map.Entry<String, String> entry : map.entrySet()) {
//			String key = entry.getKey();
//			String value = entry.getValue();
//			if (key.equals(username) && value.equals(password)) {
//				mv.setViewName("display");
//				mv.addObject("message", "Welcome " + username + "!💜");
//				break;
//			} else {
//				mv.setViewName("error");
//				mv.addObject("message", "Invalid User");
//			}
//		}
//
//		return mv;
//	}
//
//}



