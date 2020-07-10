package org.kh.camp.board.store;

import java.util.ArrayList;

import org.kh.camp.board.domain.Board;
import org.kh.camp.board.domain.BoardComment;
import org.kh.camp.board.domain.PageInfo;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("bStore")
public class BoardStoreLogic {

	@Autowired
	   private SqlSessionTemplate sqlSession;
	   
	   public int getListCount() {
		   /*return sqlSession.selectOne("boardMapper.getListCount");*/
		   return 0;
	   }
	
	 public ArrayList<Board> selectList(PageInfo pi) {
	 
		 /*return (ArrayList)sqlSession.selectList("boardMapper.selectList",null, rowBounds);*/
		 return null;
	 }
	 
	 public int addReadCount(int bId) {
		   /*return sqlSession.update("boardMapper.updateCount",bId);*/
		 return 0;
	   }
	   
	   public Board selectBoard(int bId) {
		   /*return sqlSession.selectOne("boardMapper.selectOne",bId);*/
		   return null;
	   }
	   
	   //댓글 전체 조회
	   public ArrayList<BoardComment> selectReplyList(int bId){
		   /*return (ArrayList)sqlSession.selectList("boardMapper.selectReplyList",bId);*/
		   return null;
	   }
	   
	   
		// 게시글 댓글 저장
		public int insertReply(BoardComment bc) {
			/*return sqlSession.insert("boardMapper.insertReply", bc);*/
			return 0;
		}
	
}
