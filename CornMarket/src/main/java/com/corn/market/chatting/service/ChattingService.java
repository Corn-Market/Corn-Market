package com.corn.market.chatting.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.springframework.stereotype.Service;

import com.corn.market.chatting.dao.ChattingDao;
import com.corn.market.chatting.domain.ChatUserInfo;
import com.corn.market.chatting.domain.ChattingContent;
import com.corn.market.chatting.domain.ChattingInfo;
import com.corn.market.chatting.domain.ChattingRoom;
import com.corn.market.chatting.domain.ChattingRoomInfo;

@Service
public class ChattingService {
	
	private final ChattingDao dao;

	public ChattingService(ChattingDao dao) {
		this.dao = dao;
	}

	//채팅방 새로 등록
	public String regNewChattingRoom(String post_id, String buyer_id) throws Exception {
		//판매글 하나에 구매자 하나의 채팅만 등록해야함
		String room_id = getChattingRoomId(); //UUID 생성
		String seller_id = getSellerId(post_id);

		ChattingRoom chattingRoom = new ChattingRoom(room_id,post_id,seller_id,buyer_id);
		dao.insertChattingRoom(chattingRoom);
		return room_id;
	}
	//채팅방 번호 UUID 생성
	public String getChattingRoomId() {
		String room_id = UUID.randomUUID().toString();
		return room_id;
	}
	//판매글 아이디로 판매자 아이디 가져오기
	public String getSellerId(String post_id) throws Exception {
		String seller_id = dao.selectSellerId(post_id);
		return seller_id;
	}
	
	//채팅 내용 등록
	public void regChattingContent(ChattingContent chattingContent) throws Exception {
		dao.insertChattingContent(chattingContent);
	}
	
	//채팅방 목록 조회
	public List<ChattingRoomInfo> getChattingList(String user_id) throws Exception {
		List<ChattingRoomInfo> list = dao.selectChattingRoom(user_id);
		return list;
	}
	
	//채팅창 정보 조회 (채팅내용)
	public ChattingInfo getChattingInfo(String room_id, String user_id) throws Exception {
		Map<String,String> ids = new HashMap<>();
		ids.put("room_id",room_id);
		ids.put("user_id",user_id);
		ChattingInfo chattingInfo = dao.selectChattingInfo(ids);
		String[] imgs = chattingInfo.getPost_img().split(",");
		chattingInfo.setPost_img(imgs[0]);
		chattingInfo.setChatlist(dao.selectChattingContent(room_id));
		return chattingInfo;
	}
	
	//판매글 id와 구매자 id(세션)로 채팅방 확인 (채팅방 생성시)
	public String checkChatRoom(String post_id, String user_id) throws Exception {
		Map<String,String> ids = new HashMap<>();
		ids.put("post_id",post_id);
		ids.put("user_id",user_id);
		String check = dao.checkChattingRoom(ids);
		return check; //조회 결과 없으면 0 있으면 방id 반환
	}
	
	//채팅방 삭제
	public void deleteChatRoom(String room_id, String user_id) throws Exception {
		Map<String,String> ids = new HashMap<>();
		ids.put("room_id",room_id);
		ids.put("user_id",user_id);
		dao.updateChattingStatus(ids);
	}
	
	//채팅 사용자 정보 (프로필 이미지, 닉네임)
	public ChatUserInfo getUserInfo(String user_id) throws Exception {
		return dao.selectUserInfo(user_id);
	}

}
