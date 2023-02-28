package com.corn.market.review.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.corn.market.review.domain.ReviewReg;
import com.corn.market.review.service.ReviewService;

@Controller
public class ReviewController {
	
	private final ReviewService service;

	public ReviewController(ReviewService service) {
		this.service = service;
	}

	@GetMapping("/review")
	public String reviewPage() {
		return "review/popup_review";
	}
	
	@PostMapping("/review")
	public String regReview(ReviewReg review) throws Exception {
		service.regReview(review);
		return "redirect:/chatting/list";
	}
	//판매글의 거래상태를 거래완료로 수정
	@ResponseBody
	@RequestMapping(value="/review/post-end", produces = "application/json; charset=utf-8", 
	method = RequestMethod.POST)
	public String changePostStatus(@RequestBody String post_id) throws Exception {
		String status = service.getPostStatus(post_id);
		if(status.equals("판매중")) {
			service.modifyPostStatus(post_id);
		}
		return status;
	}

}
