package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class SayHelloController {
	@GetMapping("/hello")
	public ModelAndView getHelloMsg() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("msg", "Hello Addieee...");
		mav.setViewName("/hello");
	
		return mav;
	}

}
