package com.example.webserver.myserver.controllers;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class MyController {
	
	@GetMapping("/hello")
	public String sayHello(HttpServletRequest request) {
		
		String requestedUrl = request.getRequestURI(); 
		
		return "Hello from Spring Boot! You requested for " + requestedUrl;
	}

}
