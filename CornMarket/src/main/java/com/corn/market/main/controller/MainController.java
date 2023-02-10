package com.corn.market.main.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {
	
	@GetMapping("/")
	public String mainPage() {
		return "/main/index";
	}
	@GetMapping("/main")
	public String mainPage2() {
		return "/main/index";
	}
	
}
