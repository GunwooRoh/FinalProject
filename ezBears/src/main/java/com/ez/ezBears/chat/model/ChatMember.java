package com.ez.ezBears.chat.model;

public class ChatMember {
	private int chatRoomNo;
	private String memNum;
	private String divName;
	private String memName;
	private String rankName;
	private int memStatus;
	
	public ChatMember() {}

	public int getChatRoomNo() {
		return chatRoomNo;
	}

	public void setChatRoomNo(int chatRoomNo) {
		this.chatRoomNo = chatRoomNo;
	}

	public String getMemNum() {
		return memNum;
	}

	public void setMemNum(String memNum) {
		this.memNum = memNum;
	}

	public String getDivName() {
		return divName;
	}

	public void setDivName(String divName) {
		this.divName = divName;
	}

	public String getMemName() {
		return memName;
	}

	public void setMemName(String memName) {
		this.memName = memName;
	}

	public String getRankName() {
		return rankName;
	}

	public void setRankName(String rankName) {
		this.rankName = rankName;
	}

	public int getMemStatus() {
		return memStatus;
	}

	public void setMemStatus(int memStatus) {
		this.memStatus = memStatus;
	}

	@Override
	public String toString() {
		return "ChatMember [chatRoomNo=" + chatRoomNo + ", memNum=" + memNum + ", divName=" + divName + ", memName="
				+ memName + ", rankName=" + rankName + ", memStatus=" + memStatus + "]";
	}

}
