package com.ez.ezBears.myBoard.model;

import java.util.List;

public interface MyBoardListService {
	List<MyBoardListVO> selectBoardList(int memNo);
}
