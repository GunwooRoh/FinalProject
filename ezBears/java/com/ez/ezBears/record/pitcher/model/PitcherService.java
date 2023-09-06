package com.ez.ezBears.record.pitcher.model;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.ez.ezBears.team.model.TeamVO;

public interface PitcherService {
	int insertPitcher(PitcherVO pitcherVo);
	int updatePitcher(PitcherVO pitcherVo);
	int deletePitcher(PitcherVO pitcherVo);
	PitcherVO selectPitcherByPlayerNo(int playerNo);
	List<Map<String, Object>> selectPitcherView(int playerNo);
	List<Map<String, Object>> selectPitcherRecordView(int recordNo);
	
	//투수 전체조회
	List<TeamVO> selectAllPitcher();
}