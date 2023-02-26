package com.corn.market.chatting.domain;

public class ChatUserInfo {

	private String nickname;
	private String profile_img;
	
	public ChatUserInfo() {}

	public ChatUserInfo(String nickname, String profile_img) {
		super();
		this.nickname = nickname;
		this.profile_img = profile_img;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getProfile_img() {
		return profile_img;
	}

	public void setProfile_img(String profile_img) {
		this.profile_img = profile_img;
	}

	@Override
	public String toString() {
		return "ChatUserInfo [user_name=" + nickname + ", profile_img=" + profile_img + "]";
	}
	
}
