package com.corn.market.account.service;

import com.corn.market.account.domain.AccountDto;
import com.corn.market.account.domain.AccountResponse;
import org.springframework.stereotype.Service;

import com.corn.market.account.dao.AccountDao;
import com.corn.market.account.domain.AccountIdRequest;
import com.corn.market.account.domain.AccountPwRequest;


@Service
public class AccountService {
	
	private final AccountDao dao;

	public AccountService(AccountDao dao) {
		this.dao = dao;
	}

	//아이디 찾기 - 휴대폰번호로
	public AccountResponse searchIdByPhone (AccountIdRequest accountId) {
		AccountDto accountPhone =
				new AccountDto(null,accountId.getUser_name(),accountId.getPhone(),null);
		return dao.selectUserIdByPhone(accountPhone);
	}
	//휴대폰번호로 아이디 찾기 전 유효성 확인
	public int checkIdByPhone (AccountIdRequest accountId) {
		AccountDto accountPhone =
				new AccountDto(null,accountId.getUser_name(),accountId.getPhone(),null);
		return dao.checkIdByPhone(accountPhone);
	}
	//아이디 찾기 - 이메일로
	public AccountResponse searchIdByMail (AccountIdRequest accountId) {
		String email = accountId.getEmail_id() + "@" + accountId.getEmail_domain();
		AccountDto accountMail =
				new AccountDto(null,accountId.getUser_name(),null,email);
		return dao.selectUserIdByMail(accountMail);
	}
	//이메일로 아이디 찾기 전 유효성 확인
	public int checkIdByMail (AccountIdRequest accountId) {
		String email = accountId.getEmail_id() + "@" + accountId.getEmail_domain();
		AccountDto accountMail =
				new AccountDto(null,accountId.getUser_name(),null,email);
		return dao.checkIdByMail(accountMail);
	}

	//비밀번호 찾기
	public AccountResponse searchPw (AccountPwRequest accountPw) {
		String email = accountPw.getEmail_id() + "@" + accountPw.getEmail_domain();
		AccountDto account =
				new AccountDto(accountPw.getUser_id(),accountPw.getUser_name(),null,email);
		return dao.selectUserPw(account);
	}
	//비밀번호 찾기 전 유효성 확인
	public int checkPw (AccountPwRequest accountPw) {
		String email = accountPw.getEmail_id() + "@" + accountPw.getEmail_domain();
		AccountDto account =
				new AccountDto(accountPw.getUser_id(),accountPw.getUser_name(),null,email);
		return dao.checkPw(account);
	}

	//이메일 인증번호 전송전 확인
	public int checkEmail(String email) {
		return dao.checkEmail(email);
	}
}
