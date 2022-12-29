package com.corn.market.main.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainController {
	
	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public String mainPage1() {
		return "/main/index";
	}
	
	@RequestMapping(value = "/main/after_login", method = RequestMethod.GET)
	public String mainPage2() {
		return "/main/index2";
	}
	
}