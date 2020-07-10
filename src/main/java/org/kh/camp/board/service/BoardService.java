package org.kh.camp.board.service;

import java.util.ArrayList;

import org.kh.camp.board.domain.Board;
import org.kh.camp.board.domain.BoardComment;
import org.kh.camp.board.domain.PageInfo;

public interface BoardService {

	/**
	 *	1_1. 게시판 전체 수 조회 
	 * 
	 */
	public int getListCount();

	public ArrayList<Board> selectList(PageInfo pi);

	/**
	 * 2. 게시판 등록
	 * 
	 * @param b
	 * @return result
	 */
	public int insertBoard(Board b);

	/**
	 * 3_1. 게시판 상세 조회시 조회수 증가
	 * 
	 * @param bId
	 * @return result
	 */
	public int addReadCount(int bId);

	/**
	 * 3_2. 게시판 상세 조회
	 * 
	 * @param bId
	 * @return
	 */
	public Board selectBoard(int bId);

	/**
	 * 4. 게시판 수정 
	 * 
	 * @param b
	 * @return result
	 */
	public int updateBoard(Board b);

	/**
	 * 5. 게시판 삭제
	 * 
	 * @param bId
	 * @return result
	 */
	public int deleteBoard(int bId);

	
	/*
	 * 
	 * 6. 게시글 댓글 조회
	 *  @param bId
	 * @return list
	 * 
	 */
	public ArrayList<BoardComment> selectReplyList(int bId);
	
	/*
	 * 
	 * 6. 게시글 댓글 등록
	 * 
	 *  @param r
	 * @return result
	 * 
	 */
	public int insertReply(BoardComment bc);
	
}
