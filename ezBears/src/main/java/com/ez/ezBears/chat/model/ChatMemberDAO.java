package com.ez.ezBears.chat.model;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ChatMemberDAO {
	
	//채팅방 멤버 추가
	int insertChatMember(ChatMemberVO chatMemberVo);
}
