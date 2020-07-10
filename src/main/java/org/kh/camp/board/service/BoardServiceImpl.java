package org.kh.camp.board.service;

import java.util.ArrayList;

import org.kh.camp.board.domain.Board;
import org.kh.camp.board.domain.BoardComment;
import org.kh.camp.board.domain.PageInfo;
import org.springframework.stereotype.Service;


@Service("bService")
public class BoardServiceImpl implements BoardService{

	@Override
	public int getListCount() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public ArrayList<Board> selectList(PageInfo pi) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int insertBoard(Board b) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int addReadCount(int bId) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Board selectBoard(int bId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int updateBoard(Board b) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteBoard(int bId) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public ArrayList<BoardComment> selectReplyList(int bId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int insertReply(BoardComment bc) {
		// TODO Auto-generated method stub
		return 0;
	}

	

}
