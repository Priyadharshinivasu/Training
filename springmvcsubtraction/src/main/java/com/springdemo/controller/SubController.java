 package com.springdemo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class SubController {
	@RequestMapping(value ="/sub",method = RequestMethod.GET)
	public ModelAndView getSubForm() {
		return new ModelAndView("subform");
	}
	@RequestMapping(value = "/sub", method = RequestMethod.POST)
	public ModelAndView performAddition(@RequestParam("num1") int num1, @RequestParam("num2") int num2) {
		int result = num1 - num2;
		ModelAndView mv = new ModelAndView("display");
		mv.addObject("num1", num1);
		mv.addObject("num2", num2);
		mv.addObject("result", result);
		return mv;
	}


}
