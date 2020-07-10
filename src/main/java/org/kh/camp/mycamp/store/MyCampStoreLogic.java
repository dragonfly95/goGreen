package org.kh.camp.mycamp.store;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.kh.camp.mycamp.domain.MyCamp;
import org.kh.camp.mycamp.domain.MyCampComment;
import org.kh.camp.mycamp.domain.MyCampPageInfo;
import org.kh.camp.mycamp.domain.MyCampSearch;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
import org.springframework.web.multipart.MultipartFile;

@Repository("mycStore")
public class MyCampStoreLogic {

		@Autowired
		private SqlSessionTemplate sqlSession;
	
		 //페이징 처리를 위한 게시글 카운트
		public int getMyCampListCount() {
			return sqlSession.selectOne("myCampMapper.getListCount");
		}
		
	   // 나만의 캠핑 게시판 전체 조회		
		public ArrayList<MyCamp> selectMycamp(MyCampPageInfo mycpi) {
			int offset = (mycpi.getMycCurrentPage()-1) * mycpi.getMycBoardLimit();
			RowBounds rowBounds = new RowBounds(offset, mycpi.getMycBoardLimit());
		
			return (ArrayList)sqlSession.selectList("myCampMapper.selectList",null,rowBounds);
		}
	   
	   //나만의 캠핑장 검색
	   public ArrayList<MyCamp> searchList(MyCampSearch myCampSearch) {
		   ArrayList<MyCamp> list = new ArrayList<>();
	      //return (ArrayList)SqlSession.selectList("myCampMapper.searchList", myCampSearch);
		   return list;
	   }
	   
	   // 나만의 캠핑 게시판 세부 내용조회 (멤버넣고)
	   /* public MyCamp selectOneMyCamp(int mId) {
	      return sqlSession.selectOne("myCampMapper.selectOne", mId);
	   }*/
	   
	// 나만의 캠핑 게시판 세부 내용조회
	   public MyCamp selectOneMyCamp(int mycNo) {
	      return sqlSession.selectOne("myCampMapper.selectOne", mycNo);
	   }
	   
	   //조회수 증가
	   
	   
	   //나만의 캠핑 게시글 쓰기
	   public int insertMyCamp(MyCamp myCamp) {
	      //return sqlSession.insert("myCampMapper.insertMyCamp", myCamp);
		   return 0;
	   }
	   
	  //나만의 캠핑 글 수정
	   public int updateMyCamp(MyCamp myCamp) {
	      //return sqlSession.update("myCampMapper.updateMyCamp", myCamp);
	      return 0;
	   }
	   
	  //나만의 캠핑 글 삭제
	   public int deleteMyCamp(int mId) {
	      //return sqlSession.delete("myCampMapper.deleteMyCamp", mId);
		   return 0;
	   }

	
	   //나만의 캠핑 댓글
	   
	   //나만의 캠핑 댓글 내용 조회
		public ArrayList<MyCampComment> selectMyCampComment(){
			ArrayList<MyCampComment> list = new ArrayList<>();
			//return (ArrayList)SqlSession.selectList("myCampCommentMapper.selectList");
			return list;
		}
		
		//나만의 캠핑 댓글 쓰기
		public int insertMyCampComment(MyCampComment myCampComment) {
			 //return SqlSession.insert("myCampCommentMapper.insertMyCampComment", myCampComment);
			return 0;
		}

		//나만의 캠핑 댓글 수정
		public int updateMyCampComment(MyCampComment myCampComment) {
			//return SqlSession.update("myCampCommentMapper.updateMyCampComment", myCampComment);
			return 0;
		}

		//나만의 캠핑 댓글 삭제
		public int deleteMyCampComment(int mId) {
			//return SqlSession.delete("myCampCommentMapper.deleteMyCampComment", mId);
			return 0;
		}
		
}
