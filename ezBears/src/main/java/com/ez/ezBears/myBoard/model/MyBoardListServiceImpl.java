package com.ez.ezBears.myBoard.model;

import java.util.List;

import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class MyBoardListServiceImpl implements MyBoardListService {
	private final MyBoardListDAO myBoardListDao;
	@Override
	public List<MyBoardListVO> selectBoardList(int memNo) {
		return myBoardListDao.selectBoardList(memNo);
	}

}
