package com.ez.ezBears.record.controller;

import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.HttpServerErrorException;

import com.ez.ezBears.common.ConstUtil;
import com.ez.ezBears.common.PaginationInfo;
import com.ez.ezBears.common.SearchVO;
import com.ez.ezBears.record.game.model.GameService;
import com.ez.ezBears.record.game.model.GameVO;
import com.ez.ezBears.team.model.TeamService;

import jakarta.servlet.http.HttpServletRequest;
import lombok.RequiredArgsConstructor;


@Controller
@RequestMapping("/record")
@RequiredArgsConstructor
public class RecordController {
	private static final Logger logger = LoggerFactory.getLogger(RecordController.class);

	private final GameService gameService;
	private final TeamService teamService;
	
	
	@RequestMapping("/playerList")
	public String playerList() {
		//기록 검색
		logger.info("선수 리스트 보여주기");
		return "/record/playerList";
	}
	
	@RequestMapping("/gameRecord")
	public String gameRecord() {
		//1,4
		logger.info("경기 기록 보여주기");
		return "/record/gameRecord";
	}
	
	@GetMapping("/gameRecordDetail")
	public String gameRecordDetail_get(@RequestParam(defaultValue = "0") int recodeNo, Model model) {
		logger.info("경기 기록 상세 페이지 이동 파라미터, recodeNo={}", recodeNo);
		
		GameVO gameVo = gameService.selectByRecodeNo(recodeNo);
		logger.info("경기 기록 상세 페이지 조회, 결과 gameVo={} ", gameVo);
		
		model.addAttribute("gameVo", gameVo);
		
		return "/record/gameRecordDetail";
	}
	
	
	@RequestMapping("/gameRecordCal")
	public String gameRecordCal() {
		//1,4
		logger.info("경기 상세 기록 보여주기");
		return "/record/gameRecordCal";
	}
	
	
	@RequestMapping("/team")
	public String team() {
		//1,4
		logger.info("팀 기록 보여주기");
		return "/record/team";
	}
	
	@RequestMapping("/gameRecordDetail2")
	public String gameRecordDetail2() {
		//1,4
		logger.info("날짜 별 경기 기록 상세 보여주기");
		return "/record/gameRecordDetail2";
	}
	
	
	@RequestMapping("/summary")
	public String summary() {
		//1,4
		logger.info("경기 개요");
		return "/record/summary";
	}
	
	@RequestMapping("/lineup")
	public String lineup() {
		//1,4
		logger.info("라인업");
		return "/record/lineup";
	}
	

	@RequestMapping("/calander2")
	public String calander2() {
		//1,4
		logger.info("캘린더");
		return "/record/gameRecordCal";
	}
	
	@RequestMapping("/firstInning")
	public String firstInning() {
		//1,4
		logger.info("라인업");
		return "/record/firstInning";
	}
	
	@RequestMapping("/playerDetail2")
	public String playerDetail2() {
		//1,4
		logger.info("라인업");
		return "/record/playerDetail2";
	}
	
	
	@RequestMapping("/hitterRecordWrite")
	public String hitterRecordWrite() {
		//1,4
		logger.info("타자기록입력");
		return "/record/hitterRecordWrite";
	}
	
	@RequestMapping("/hitterRecordEdit")
	public String hitterRecordEdit() {
		//1,4
		logger.info("타자기록수정");
		return "/record/hitterRecordEdit";
	}
	
	@RequestMapping("/hitterRecordDelete")
	public String hitterRecordDelete() {
		//1,4
		logger.info("타자기록삭제");
		return "/record/hitterRecordDelete";
	}
	
	@RequestMapping("/hitterRecordDetail")
	public String hitterRecordDetail() {
		//1,4
		logger.info("타자기록정보");
		return "/record/hitterRecordDetail";
	}
	
	@RequestMapping("/pitcherRecordWrite")
	public String pitcherRecordWrite() {
		//1,4
		logger.info("투수기록입력");
		return "/record/pitcherRecordWrite";
	}
	
	@RequestMapping("/pitcherRecordEdit")
	public String pitcherRecordEdit() {
		//1,4
		logger.info("투수기록수정");
		return "/record/pitcherRecordEdit";
	}
	
	@RequestMapping("/pitcherRecordDelete")
	public String pitcherRecordDelete() {
		//1,4
		logger.info("투수기록삭제");
		return "/record/pitcherRecordDelete";
	}
	
	@RequestMapping("/pitcherRecordDetail")
	public String pitcherRecordDetail() {
		//1,4
		logger.info("투수기록정보");
		return "/record/pitcherRecordDetail";
	}
	

    @RequestMapping("/gameList")
    public String gameList(@ModelAttribute SearchVO searchVo, Model model) {
        logger.info("경기정보, 파라미터 searchVo={}", searchVo);
            
        List<GameVO> list = gameService.selectAllGame(searchVo);
        logger.info("경기 전체 조회결과, list.size={}", list.size());
        
        model.addAttribute("list", list);

        return "record/gameList"; 
    }

    @GetMapping("/gameWrite")
    public String gameWrite_get(Model model, SearchVO searchVo) {
        logger.info("경기 등록 화면 이동");
        
        List<GameVO> gameWrite = gameService.selectAllGame(searchVo);
        
        model.addAttribute("list", gameWrite);

        return "record/gameWrite";
    }
    
    @PostMapping("/gameWrite")
    public String gameWrite_post(@ModelAttribute GameVO gameVo) {
        logger.info("경기 등록 처리 파라미터, gameVo={}", gameVo);

       int cnt = gameService.insertGame(gameVo);
       logger.info("게임 등록 처리 결과, cnt={}", cnt);
        
        return "redirect:/record/gameList";
    }

	
	@GetMapping("/gameEdit")
	public String gameUpdate_get(@RequestParam int recodeNo, Model model, SearchVO searchVo) {
		logger.info("경기 정보 수정 화면 이동, 파라미터 recodeNo={}", recodeNo);
		
		if(recodeNo == 0) {
			model.addAttribute("msg", "잘못된 URL입니다");
			model.addAttribute("url", "/record/gameList");
			return "common/message";
		}
		
	GameVO gameVo = gameService.selectByRecodeNo((recodeNo));
	logger.info("경기 수정 화면 이동 결과, gameVo={}", gameVo);
	List<GameVO> gameEdit = gameService.selectAllGame(searchVo);
	
	model.addAttribute("gameVo", gameVo);
	model.addAttribute("gameEdit", gameEdit);
	
	return "/record/gameEdit";
	}
	
	
	@PostMapping("/gameEdit")
	public String gameUpdate_post(@ModelAttribute GameVO gameVo, HttpServletRequest rquest, Model model) {
		//1,4
		logger.info("경기 수정 처리, 파라미터 gameVo={}", gameVo);
		
		int cnt = gameService.updateGame(gameVo);
		logger.info("경기 수정 처리 결과, cnt={}", cnt);
		
		return "redirect:/record/gameEdit?recodeNo="+gameVo.getRecodeNo();
	}
	
	
	@GetMapping("/gameDelete")
	public String gameDelete_get(@RequestParam(defaultValue = "0") int recodeNo, Model model) {
		logger.info("경기 삭제 화면 이동, 파라미터 recodeNo={}", recodeNo);
		
		GameVO gameVo = gameService.selectByRecodeNo(recodeNo);
		logger.info("경기 삭제 화면 이동, 파라미터 gameVo={}", gameVo);
		
		model.addAttribute("gameVo", gameVo);
		
		return "/record/gameDelete";
	}
	
	@PostMapping("/gameDelete")
	public String gameDelete_post(@RequestParam(defaultValue = "0") int recodeNo, Model model) {
		logger.info("경기 삭제 처리 , 파라미터 recodeNo={}", recodeNo);
		
		int cnt = gameService.deleteGame(recodeNo);
		logger.info("경기 삭제 처리 결과, 파라미터 cnt={}", cnt);
		
		return "redirect:/record/gameList";
	}
	
	@RequestMapping("/inningWrite")
	public String inningWrite() {
		//1,4
		logger.info("이닝정보등록");
		return "/record/inningWrite";
	}
	
	
	@RequestMapping("/inningEdit")
	public String inningUpdate() {
		//1,4
		logger.info("이닝정보수정");
		return "/record/inningEdit";
	}

	
	@RequestMapping("/teamList")
	public String List_get(@ModelAttribute SearchVO searchVo, Model model) {
		logger.info("선수 목록 화면 이동, 파라미터 searchVo={}", searchVo);
		
		//pagination 객체 생성하고 변수 없는 애들 선언해주기
		PaginationInfo pagination = new PaginationInfo();
		pagination.setBlockSize(ConstUtil.BLOCK_SIZE);
		pagination.setCurrentPage(searchVo.getCurrentPage());
		pagination.setRecordCountPerPage(ConstUtil.RECORD_COUNT);
		
		//searchVo 에 비어있는 변수 선언하기
		searchVo.setFirstRecordIndex(pagination.getFirstRecordIndex());
		searchVo.setRecordCountPerPage(pagination.getRecordCountPerPage());
		logger.info("설정 후 searchVo={}", searchVo);
		
		int totalRecord = teamService.getTotalRecord(searchVo);
		pagination.setTotalRecord(totalRecord);
		logger.info("pagination 설정 완");
		
		List<Map<String, Object>> list = teamService.selectAllTeam(searchVo);
		logger.info("선수 목록 화면 처리 결과, list.size()={}", list.size());
		
		model.addAttribute("list", list);
		model.addAttribute("pagination", pagination);
		
		return "/record/teamList";
	}
}