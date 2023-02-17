package com.corn.market.account.dao;

import com.corn.market.account.domain.AccountDto;
import com.corn.market.account.domain.AccountResponse;
import org.apache.ibatis.session.SqlSession;

import org.springframework.stereotype.Repository;

@Repository
public class AccountDao {

	private static String namespace = "com.corn.market.AccountMapper.";
	private final SqlSession session;

	public AccountDao(SqlSession session) {
		this.session = session;
	}

	//아이디 찾기 - 휴대폰번호로
	public AccountResponse selectUserIdByPhone (AccountDto accountPhone) {
		return session.selectOne(namespace + "selectUserIdByPhone", accountPhone);
	}
	//아이디 확인 - 휴대폰번호로
	public int checkIdByPhone (AccountDto accountPhone) {
		return session.selectOne(namespace + "checkIdByPhone", accountPhone);
	}
	
	//아이디 찾기 - 이메일로
	public AccountResponse selectUserIdByMail (AccountDto accountMail) {
		return session.selectOne(namespace + "selectUserIdByMail", accountMail);
	}
	//아이디 확인 - 이메일로
	public int checkIdByMail (AccountDto accountMail) {
		return session.selectOne(namespace + "checkIdByMail", accountMail);
	}

	//이메일 확인
	public int checkEmail (String email) {
		return session.selectOne(namespace + "checkEmail", email); //이메일이 없으면 0, 있으면 1
	}
	
	//비밀번호 찾기
	public AccountResponse selectUserPw (AccountDto account) {
		return session.selectOne(namespace + "selectUserPw", account);
	}
	//비밀번호 확인
	public int checkPw (AccountDto account) {
		return session.selectOne(namespace + "checkPw", account);
	}

}
