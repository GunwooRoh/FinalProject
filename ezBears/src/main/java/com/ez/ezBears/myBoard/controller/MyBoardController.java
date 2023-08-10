package com.ez.ezBears.myBoard.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/myBoard")
public class MyBoardController {
	private static final Logger logger = LoggerFactory.getLogger(MyBoardController.class);

	//예지
	/*팀별 공지사항 게시판 */
	@RequestMapping("/teamNotice")
	public String teamNotice() {
		logger.info("팀 공지사항 리스트 페이지");
		return "myBoard/teamNoticeList";
	}
	
	@RequestMapping("/teamNoticeDetail")
	public String teamBoardDetil(/* @RequestParam (defaultValue = "0")int no */) {
		logger.info("팀 공지사항 디테일 페이지 파라미터 no={}");
		return "myBoard/teamNoticeDetail";
	}
	
	
	@RequestMapping("/teamNoticeWrite")
	public String teamNoticeWrite() {
		logger.info("팀 공지사항 등록하기 페이지");
		return "myBoard/teamNoticeWrite";
	}
	

	/*팀별 업무 게시판 */
	@RequestMapping("/teamWorkBoard")
	public String teamWorkBoard() {
		logger.info("팀 업무 게시판 리스트 페이지");
		return "myBoard/teamWorkBoardList";
	}
	
	
	@RequestMapping("/teamWorkBoardWrite")
	public String teamWorkBoardWrite() {
		logger.info("팀 업무 게시판 등록하기 페이지");
		return "myBoard/teamWorkBoardWrite";
	}
	
	@RequestMapping("/teamWorkBoardDetail")
	public String teamWorkBoardDetail() {
		logger.info("팀 업무 게시판 상세 보기");
		return "myBoard/teamWorkBoardDetail";
	}
	
	
	//희진
	/*팀별 결재 게시판 */

	@RequestMapping("/Approval")
	public String Approval() {
		logger.info("결재 리스트");
		return "myBoard/Approval";
	}
	
	@RequestMapping("/Approval_wr")
	public String Approval_wr() {
		logger.info("결재 작성");
		return "myBoard/Approval_wr";
	}
	
	@RequestMapping("/Approval_detail")
	public String Approval_detail() {
		logger.info("결재 디테일");
		return "myBoard/Approval_detail";
	}
	
	@RequestMapping("/Approval_delete")
	public String Approval_delete() {
		logger.info("결재하드 삭제");
		return "myBoard/Approval_delete";
	}
	
	
	/*팀별 웹하드 게시판 */
	@RequestMapping("/webhard")
	public String hard() {
		logger.info("웹하드 리스트");
		return "myBoard/webhard";
	}	
	
	@RequestMapping("/webhard_detail")
	public String hard_detail() {
		logger.info("웹하드 디테일");
		return "myBoard/webhard_detail";
	}
	@RequestMapping("/webhard_delete")
	public String hard_delete() {
		logger.info("웹하드 삭제");
		return "myBoard/webhard_delete";
	}
	
   /* 캘린더 */
   @RequestMapping("/Calender")
   public String Calender() {
      logger.info("결재 리스트");
      return "myBoard/Calender";
   }	



}


