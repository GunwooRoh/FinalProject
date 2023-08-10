package com.ez.ezBears.myBoard.model;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface MyBoardListDAO {
	List<MyBoardListVO> selectBoardList(int memNo);

}
