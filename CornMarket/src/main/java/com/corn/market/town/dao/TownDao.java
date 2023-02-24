package com.corn.market.town.dao;

import java.sql.SQLException;

import org.apache.ibatis.session.SqlSession;

import com.corn.market.town.domain.TownCertification;
import com.corn.market.town.domain.TownInfo;
import org.springframework.stereotype.Repository;

@Repository
public class TownDao {

	private final SqlSession session;
	private static String namespace = "com.corn.market.TownMapper.";

	public TownDao(SqlSession session) throws Exception {
		this.session = session;
	}

	//구 이름으로 town code 가져오기
	public String selectTownCode(TownInfo townInfo) throws Exception {
		return session.selectOne(namespace + "selectTownCode", townInfo);
	}
	
	//동네인증 이전 기록 삭제
	public void deletePrevAddress(String user_id) throws Exception {
		session.delete(namespace + "deletePrevAddress", user_id);
	}
	
	//동네인증 등록
	public void insertNewAddress(TownCertification town) throws Exception {
		session.insert(namespace + "insertNewAddress", town);
	}
	
	//동네인증 아이디당 이전 인증기록 개수 체크
	public int selectCountAddress(String user_id) throws Exception {
		return session.selectOne(namespace + "selectCountAddress", user_id);
	}

}
