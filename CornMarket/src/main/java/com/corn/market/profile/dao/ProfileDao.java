package com.corn.market.profile.dao;


import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.corn.market.profile.domain.ProfileReview;
import com.corn.market.profile.domain.ProfileSale;
import com.corn.market.profile.domain.ProfileUpdate;
import com.corn.market.profile.domain.Review;
import com.corn.market.profile.domain.Sale;
import org.springframework.stereotype.Repository;

@Repository
public class ProfileDao {
	
	private final SqlSession session;
	private static String namespace = "com.corn.market.ProfileMapper.";

	public ProfileDao(SqlSession session) {
		this.session = session;
	}

	//판매내역 조회
	public List<Sale> selectSale(Map<String, String> saleMap) throws Exception { // user_id, post_status
		return session.selectList(namespace+"selectSale", saleMap);
	}
	
	//거래후기 조회
	public List<Review> selectReview(String user_id) throws Exception {
		return session.selectList(namespace+"selectReview", user_id);
	}
	
	//프로필+판매내역 조회
	public ProfileSale selectProfileSale(String user_id) throws Exception {
		return session.selectOne(namespace+"selectProfileSale", user_id);
	}
	
	//프로필+거래후기 조회
	public ProfileReview selectProfileReview(String user_id) throws Exception {
		return session.selectOne(namespace+"selectProfileReview", user_id);
	}
	
	//프로필 수정 조회
	public ProfileUpdate selectProfileInfo(String user_id) throws Exception {
		return session.selectOne(namespace+"selectProfileInfo", user_id);
	}
	
	//닉네임 수정 등록
	public void updateProfileNickname(Map<String, String> nicknameMap) throws Exception { // nickname, user_id
		session.update(namespace+"updateProfileNickname", nicknameMap);
	}
	
	//프로필사진 수정 등록
	public void updateProfileImage(Map<String, String> imgMap) throws Exception { // profile_img, user_id
		session.update(namespace+"updateProfileImage", imgMap);
	}
	
	//프로필 닉네임 중복 확인, 중복이면 1, 중복아니면 0
	public int checkNickname(String nickname) throws Exception {
		return session.selectOne(namespace+"checkNickname", nickname);
	}

}
