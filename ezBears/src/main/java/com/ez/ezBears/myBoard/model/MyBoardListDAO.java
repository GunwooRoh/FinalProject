
package com.ez.ezBears.myBoard.model;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface MyBoardListDAO {
	List<Map<String, Object>> selectBoardList(String userid);
	String selectByMyBoardName(int myBoardNo);

}
