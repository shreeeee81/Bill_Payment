package com.cts.billpayment.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {
	@GetMapping(value="/")
	public String homepage() {
		return "home";
	}
	
}
