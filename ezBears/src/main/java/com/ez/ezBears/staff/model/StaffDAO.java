package com.ez.ezBears.staff.model;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface StaffDAO {
	int selectCheckId(String staffId);
	String selectPwd(String staffId);
	String selectStatus(String staffId);
	int insertStaff(StaffVO staffVo);
	List<StaffVO> selectAllStaff();
	StaffVO getStaffById(String staffId);
	int getTotalRecord();
	
	Map<String, Object> selectStaffView(String staffId);
}
