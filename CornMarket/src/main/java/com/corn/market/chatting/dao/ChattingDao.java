package com.corn.market.chatting.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.corn.market.chatting.domain.ChatUserInfo;
import com.corn.market.chatting.domain.ChattingContent;
import com.corn.market.chatting.domain.ChattingContentList;
import com.corn.market.chatting.domain.ChattingInfo;
import com.corn.market.chatting.domain.ChattingRoom;
import com.corn.market.chatting.domain.ChattingRoomInfo;
import org.springframework.stereotype.Repository;

@Repository
public class ChattingDao {

	private static String namespace = "com.corn.market.ChattingMapper.";
	private final SqlSession session;

	public ChattingDao(SqlSession session) {
		this.session = session;
	}

	//채팅방 새로 등록
	public void insertChattingRoom(ChattingRoom chattingRoom) throws Exception {
		session.insert(namespace+"insertChattingRoom", chattingRoom);
	}

	//판매글 아이디로 판매자 아이디 가져오기
	public String selectSellerId(String post_id) throws Exception {
		return session.selectOne(namespace+"selectSellerId", post_id);
	}
	
	//채팅 내용 등록
	public void insertChattingContent (ChattingContent chattingContent) throws Exception {
		session.insert(namespace+"insertChattingContent", chattingContent);
	}
	
	//채팅방 목록 조회
	public List<ChattingRoomInfo> selectChattingRoom(String user_id) throws Exception {
		return session.selectList(namespace+"selectChattingRoom", user_id);
	}
	
	//채팅내용 조회
	public List<ChattingContentList> selectChattingContent(String room_id) throws Exception {
		return session.selectList(namespace+"selectChattingContent", room_id);
	}
	
	//채팅창 정보 조회 //String room_id, String user_id
	public ChattingInfo selectChattingInfo(Map<String,String> ids) throws Exception {
		return session.selectOne(namespace+"selectChattingInfo", ids);
	}
	
	//판매글id와 구매자id(세션)로 채팅방 확인 (채팅방 생성시) //String post_id, String user_id
	public String checkChattingRoom(Map<String,String> ids) throws Exception {
		//조회 결과 없으면 0 있으면 방id 반환
		return session.selectOne(namespace+"checkChattingRoom", ids);
	}
	
	//채팅방 삭제 //String room_id, String user_id
	public void updateChattingStatus (Map<String,String> ids) throws Exception {
		session.update(namespace+"updateChattingStatus", ids);
	}
	
	//사용자 프로필 이미지, 닉네임 조회
	public ChatUserInfo selectUserInfo(String user_id) throws Exception {
		return session.selectOne(namespace+"selectUserInfo", user_id);
	}
	
}
