package com.ez.ezBears.alarm.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ez.ezBears.alarm.model.AlarmVO;
import com.ez.ezBears.alarm.model.AlarmService;
import com.google.gson.Gson;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class AlarmController{
	
	private final AlarmService alService;
	
	// 알림 목록 조회
	@ResponseBody
	@RequestMapping(value = "/alarm/listView.sw", method = RequestMethod.GET, produces="application/json;charset=utf-8")
	public String alarmListView(@RequestParam("memNum") String memNum) {
		List<AlarmVO> aList = alService.printAllAlarm(memNum);
		if(!aList.isEmpty()) {
			return new Gson().toJson(aList);
		}
		return null;
	}
	
	// 알림 읽음 처리
	@ResponseBody
	@RequestMapping(value = "/alarm/read.sw", method = RequestMethod.GET, produces="application/json;charset=utf-8")
	public String alarmRead(@RequestParam("alarmNo") int alarmNo) {
		int result = alService.modifyAlarm(alarmNo);
		if(result > 0) {
			return new Gson().toJson(result);
		}
		return null;
	}
	
	// 알림 모두 읽음 처리
	@ResponseBody
	@RequestMapping(value = "/alarm/allRead.sw", method = RequestMethod.GET, produces="application/json;charset=utf-8")
	public String alarmAllRead(@RequestParam("memNum") String memNum) {
		int result = alService.modifyAllAlarm(memNum);
		if(result > 0) {
			return new Gson().toJson(result);
		}
		return null;
	}
	
	// 알림 카운트 조회
	@ResponseBody
	@RequestMapping(value = "/alarm/count.sw", method = RequestMethod.GET, produces="application/json;charset=utf-8")
	public String alarmCount(@RequestParam("memNum") String memNum) {
		int count = alService.getListCount(memNum);
		return new Gson().toJson(count);
	}
}
