package com.bdi.sp.dao;

import java.util.List;

import com.bdi.sp.vo.BoardInfo;

public interface BoardDAO {
	
	public List<BoardInfo> getBoardList(BoardInfo b);
	public int insertBoard(BoardInfo bi);
	public int updateBoard(BoardInfo bi);
	public int deleteBoard(int binum);
	public BoardInfo getBoard(int binum);
	
}
