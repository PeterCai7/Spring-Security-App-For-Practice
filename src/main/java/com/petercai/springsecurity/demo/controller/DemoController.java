package com.petercai.springsecurity.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class DemoController {
	
	@GetMapping("/")
	public String showHome() {
		return "home"; // connected to viewResolver, gonna be /WEB-INF/view/home.jsp
	}
}
