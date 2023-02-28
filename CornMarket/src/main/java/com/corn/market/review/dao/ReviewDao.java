package com.corn.market.review.dao;

import org.apache.ibatis.session.SqlSession;

import com.corn.market.review.domain.ReviewReg;
import org.springframework.stereotype.Repository;

@Repository
public class ReviewDao {

	private final SqlSession session;
	private static String namespace = "com.corn.market.ReviewMapper.";

	public ReviewDao(SqlSession session) {
		this.session = session;
	}

	//리뷰 등록
	public void insertReview(ReviewReg review) throws Exception {
		session.insert(namespace+"insertReview", review);
	}
	//판매글의 거래상태를 거래완료로 수정
	public void updatePostStatus(String post_id) throws Exception {
		session.update(namespace+"updatePostStatus", post_id);
	}
	//판매글의 거래상태 가져오기
	public String selectPostStatus(String post_id) throws Exception {
		return session.selectOne(namespace + "selectPostStatus", post_id);
	}
	
}
