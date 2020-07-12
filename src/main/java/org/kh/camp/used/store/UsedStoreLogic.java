package org.kh.camp.used.store;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.kh.camp.mycamp.domain.MyCampPageInfo;
import org.kh.camp.used.domain.UsedBoard;
import org.kh.camp.used.domain.UsedPageInfo;
import org.kh.camp.used.domain.UsedReply;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository("uStore")
public class UsedStoreLogic {

	  @Autowired
	   private SqlSessionTemplate sqlSession;
	   
	   public int getUsedListCount() {
		   return sqlSession.selectOne("usedBoardMapper.getUsedListCount");
	   }
	    
	   public ArrayList<UsedBoard> selectUsedList(MyCampPageInfo pi) {
		   
//		   int offset = (pi.getUsedCurrentPage() - 1) * pi.getUsedBoardLimit();
		   int offset = (pi.getMycCurrentPage() -1) * pi.getMycBoardLimit();
		   //mybatis의 RowBounds 클래스 사용
		   //off: 5, boardLimit :10
		   //off: 얼마나 건너 뛸것인가, 증가값
		   //limit: 고정된 값, 내가 가져오고 싶은 갯수
		   //단점: 데이터가 많아지면 느려질 수 있음
		   //10건의 0건 만큼 건너뛰고 결과값을 가져옴 => 10개
		   //15건의 5건 만큼 건너뛰고 결과값을 가져옴
		   //20건의 10건 만큼 건너뛰고 결과값을 가져옴
//		   RowBounds rowBounds = new RowBounds(offset, pi.getUsedBoardLimit());
		   RowBounds rowBounds = new RowBounds(offset, pi.getMycBoardLimit());
		   return (ArrayList)sqlSession.selectList("usedBoardMapper.selectUsedList",null, rowBounds);
	   }
	   
	   public int addReadCount(int usedId) {
		   return sqlSession.update("usedBoardMapper.updateUsedCount",usedId);
	   }
	   
	   
	   public UsedBoard selectUsedBoard(int usedId) {
		   return sqlSession.selectOne("usedBoardMapper.selectUsedOne",usedId);
	   }
	   
	   //댓글 전체 조회
	   public ArrayList<UsedReply> selectReplyList(int usedId){
		   return (ArrayList)sqlSession.selectList("usedBoardMapper.selectUsedRList",usedId);
	   }
	   
		// 게시글 댓글 저장
		public int insertReply(UsedReply u) {
			return sqlSession.insert("usedBoardMapper.insertUsedReply", u);
		}


	//------------------------------------
	public int insertUsedBoard(UsedBoard u) {
	   	return sqlSession.insert("usedBoardMapper.insertUsedBoard", u);
	}

	public int updateUsedBoard(UsedBoard u) {
		return sqlSession.update("usedBoardMapper.updateUsedBoard", u);
	}
}
