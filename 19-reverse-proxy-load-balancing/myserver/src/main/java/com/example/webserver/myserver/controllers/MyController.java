package com.example.webserver.myserver.controllers;

import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class MyController {
	
	public String serverName = "Server-" + Math.abs(Math.random() * 1000);
	
	@GetMapping("/hello")
	public String sayHello(HttpServletRequest request, HttpServletResponse response) {
		
		String requestedUrl = request.getRequestURI(); 
		StringBuffer headerNames = new StringBuffer("");
		request.getHeaderNames().asIterator().forEachRemaining( name -> headerNames.append(name + ",") );
		List<String> headers = Arrays.asList(headerNames.toString().split(",")).stream().filter(name -> name.trim().length() > 0 ).map( name -> name + ": " + request.getHeader(name) ).collect( Collectors.toList() );
		
		response.setHeader("myheader", "myvalue");
		return "Hello from Spring Boot! Server: " + serverName;
	}

}
