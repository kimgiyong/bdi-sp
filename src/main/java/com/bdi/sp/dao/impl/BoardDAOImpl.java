package com.bdi.sp.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.type.Alias;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.bdi.sp.dao.BoardDAO;
import com.bdi.sp.vo.BoardInfo;

@Repository
public class BoardDAOImpl implements BoardDAO {

	@Autowired
	private SqlSession ss;
	
	@Override
	public List<BoardInfo> getBoardList(BoardInfo b) {
		return ss.selectList("BOARD.selectBoardList",b);
	}

	@Override
	public int insertBoard(BoardInfo bi) {
		return ss.insert("BOARD.insertBoard",bi);
	}

	@Override
	public int updateBoard(BoardInfo bi) {
		return ss.update("BOARD.updateBoard",bi);
	}

	@Override
	public int deleteBoard(int binum) {
		return ss.delete("BOARD.deleteBoard",binum);
	}

	@Override
	public BoardInfo getBoard(int binum) {
		return ss.selectOne("BOARD.selectBoard",binum);
	}

}
