package com.corn.market.account.controller;

import com.corn.market.account.domain.AccountResponse;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.corn.market.account.domain.AccountIdRequest;
import com.corn.market.account.domain.AccountPwRequest;
import com.corn.market.account.service.AccountService;

@Controller
public class AccountController {
	
	private final AccountService service;

	public AccountController(AccountService service) {
		this.service = service;
	}

	//아이디 찾기 페이지로 이동
	@GetMapping("/account/id")
	public String searchIdGET() {
		return "account/idaccount";
	}
	
	//휴대폰으로 아이디 찾기 전 확인
	@ResponseBody
	@PostMapping("/account/id/phone/check")
	public int checkSearchIdPhone(@RequestBody AccountIdRequest accountId) {
		System.out.println(accountId);
		//찾는 아이디가 없으면 0, 있으면 1
		return service.checkIdByPhone(accountId);
	}
	//아이디 찾기 - 휴대폰번호로
	@PostMapping("/account/id/phone")
	public String searchIdPhone(AccountIdRequest accountId, Model model) {
		AccountResponse account = service.searchIdByPhone(accountId);
		model.addAttribute("accountId",account);
		return "account/idsuccess_popup";
	}
	
	//이메일로 아이디 찾기 전 확인
	@ResponseBody
	@PostMapping("/account/id/mail/check")
	public int checkSearchIdMail(@RequestBody AccountIdRequest accountId) {
		//찾는 아이디가 없으면 0, 있으면 1
		return service.checkIdByMail(accountId);
	}
	//아이디 찾기 - 이메일로
	@PostMapping("/account/id/mail")
	public String searchIdMail(AccountIdRequest accountId, Model model) {
		AccountResponse account = service.searchIdByMail(accountId);
		model.addAttribute("accountId",account);
		return "account/idsuccess_popup";
	}
	
	//비밀번호 찾기 페이지 이동
	@GetMapping("/account/pw")
	public String searchPwGET() {
		return "account/pwaccount";
	}
	
	//이메일 인증번호 전송전 확인
	@ResponseBody
	@PostMapping("/account/pw/mail/check")
	public int checkMail(@RequestBody String email) {
		//이메일이 없으면 0, 있으면 1
		return service.checkEmail(email);
	}
	
	//비밀번호 찾기 전 확인
	@ResponseBody
	@PostMapping("/account/pw/check")
	public int checkSearchPw(@RequestBody AccountPwRequest accountPw) {
		//찾는 비밀번호가 없으면 0, 있으면 1
		return service.checkPw(accountPw);
	}
	//비밀번호 찾기
	@PostMapping("/account/pw")
	public String searchPwPOST(AccountPwRequest accountPw, Model model) {
		AccountResponse account = service.searchPw(accountPw);
		model.addAttribute("accountPw", account);
		return "account/pwsuccess_popup";
	}
	
}
