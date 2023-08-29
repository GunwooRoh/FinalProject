package com.ez.ezBears.chat.model;

import java.util.List;

import org.springframework.stereotype.Service;

import com.ez.ezBears.chat.model.ChatContent;
import com.ez.ezBears.chat.model.ChatMember;
import com.ez.ezBears.chat.model.ChatRoom;
@Service
public interface ChatService {

	public int registerChatRoom(ChatRoom chatRoom); // 채팅방 생성
	public int registerChatMember(String memberNum); // 채팅방 사용자 등록
	public List<ChatMember> printAllMember(ChatRoom chatRoom); // 채팅방 사용자 목록 조회
	public int registerChatContent(ChatContent chatContent); // 채팅 등록
	public int printChatRoomNo(); // 채팅방 번호 불러오기
	public List<ChatRoom> printAllChatRoom(String memberNum); // 채팅방 목록 조회
	public ChatContent printChatContent(int chatRoomNo); // 마지막 대화 내용과 날짜 가져오기
	public List<ChatContent> printAllChat(int chatRoomNo); // 채팅 목록
	public int printChatMemberCount(int chatRoomNo); // 채팅 인원수 조회
	public ChatRoom printChatRoom(int chatRoomNo); // 채팅방 정보 조회
	public int modifyStatusChatMember(ChatMember chatMember); // 채팅방 나가기
	public int modifyChatTitle(ChatRoom chatRoom); // 채팅방 제목 변경
	public ChatMember printChatMember(ChatMember chatMember); // 채팅방 사용자 조회
	public int fineContentDate(ChatContent chatContent); // 날짜 공지 찾기
	public int inviteChatMember(ChatMember member); // 사용자 추가 초대
	public int modifyStatusChatRoom(ChatRoom chatRoom); // 채팅방 종류 변경
	public int removeChatRoom(int chatRoomNo); // 채팅방 삭제

}
