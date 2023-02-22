package com.corn.market.chatting.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.corn.market.chatting.domain.ChatUserInfo;
import com.corn.market.chatting.domain.ChattingContent;
import com.corn.market.chatting.domain.ChattingInfo;
import com.corn.market.chatting.domain.ChattingRoomInfo;
import com.corn.market.chatting.service.ChattingService;

@Controller
public class ChattingController {

	private final ChattingService chattingService;

	public ChattingController(ChattingService chattingService) {
		this.chattingService = chattingService;
	}

	//채팅방 목록
	@GetMapping("/chatting/list")
	public String chattingRoomList(Model model,HttpSession session) {
		String user_id = (String) session.getAttribute("id");
		List<ChattingRoomInfo> list = chattingService.getChattingList(user_id);

		model.addAttribute("list", list);
		model.addAttribute("user_id", user_id);
		return "chatting/chatting_room_list";
	}
	//채팅방 새로 등록
	@PostMapping("/chatting/list")
	public String chattingRoomReg(String post_id,HttpSession session) {
		//판매글 하나에 구매자 하나의 채팅만 등록해야함
		String buyer_id = (String) session.getAttribute("id"); //구매자 id
		String room_id = chattingService.regNewChattingRoom(post_id, buyer_id);

		//채팅방으로 이동
		return "redirect:/chatting/list/"+room_id;
	}
	//채팅방 id로 내용 조회
	@GetMapping("/chatting/list/{room_id}")
	public String chattingRoom(@PathVariable String room_id,Model model,HttpSession session) {
		String user_id = (String) session.getAttribute("id");
		ChattingInfo chattingInfo = chattingService.getChattingInfo(room_id, user_id);
		ChatUserInfo userInfo = chattingService.getUserInfo(user_id);

		model.addAttribute("chat", chattingInfo);
		model.addAttribute("id", user_id);
		model.addAttribute("info", userInfo);
		return "chatting/chatting_pop";
	}
	//채팅 내용 등록
	@ResponseBody
	@PostMapping("/chatting/list/{room_id}")
	public void chattingContentReg(@PathVariable String room_id, 
			@RequestBody ChattingContent chattingContent) {
		chattingService.regChattingContent(chattingContent);
	}
	//판매글 id와 구매자 id(세션)로 채팅방 확인 (채팅방 생성시)
	@ResponseBody
	@PostMapping("/chatting/list/check")
	public String checkChatRoom(@RequestBody String post_id,HttpSession session) {
		String user_id = (String) session.getAttribute("id");
		//조회 결과 없으면 0 있으면 방id 반환
		String room = chattingService.checkChatRoom(post_id, user_id);
		return room;
	}
	//채팅방 삭제
	@PostMapping("/chatting/list/delete")
	public String deleteChatRoom(@RequestBody String room_id,HttpSession session) {
		String user_id = (String) session.getAttribute("id");
		chattingService.deleteChatRoom(room_id,user_id);
		return "redirect:/chatting/list";
	}
}
