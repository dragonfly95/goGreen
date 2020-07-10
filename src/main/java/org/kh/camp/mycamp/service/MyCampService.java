package org.kh.camp.mycamp.service;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.kh.camp.mycamp.domain.MyCamp;
import org.kh.camp.mycamp.domain.MyCampComment;
import org.kh.camp.mycamp.domain.MyCampPageInfo;
import org.kh.camp.mycamp.domain.MyCampSearch;
import org.springframework.web.multipart.MultipartFile;



public interface MyCampService {

	 /**
	 *	나만의 캠핑 전체 조회 서비스
	 * @param mycpi
	 * @return list
	 * 
	 */
	// 나만의 캠핑 게시판 전체 조회
	public ArrayList<MyCamp> selectMyCamp(MyCampPageInfo mycpi);
	
	/**
	 * 게시판 전체 수 조회 
	 * 
	 */
	public int getMyCampListCount();

	/** 나만의 캠핑 상세조회용 서비스
	 * @param mId
	 * @return 
	 */
	// 나만의 캠핑 게시판 세부 내용조회(멤버넣고)
	/*public abstract MyCamp selectOneMyCamp(int mId);*/
	
	/** 나만의 캠핑 상세조회용 서비스
	 * @param mycNo
	 * @return 
	 */
	// 나만의 캠핑 게시판 세부 내용조회
	public MyCamp selectOneMyCamp(int mycNo);

	/** 나만의 캠핑 등록 서비스
	 * @param myCamp
	 * @return result
	 */
	//나만의 캠핑 게시글 쓰기
	public int insertMyCamp(MyCamp myCamp, MultipartFile file, HttpServletRequest request);

	/** 나만의 캠핑 수정용 서비스
	 * @param notice
	 * @return result
	 */
	//나만의 캠핑 글 수정
	public int updateMyCamp(MyCamp myCamp);

	/** 나만의 캠핑 삭제용 서비스
	 * @param mId
	 * @return result
	 */
	//나만의 캠핑 글 삭제
	public int deleteMyCamp(int mId);

	/** 나만의 캠핑 검색용 서비스 
	 * @param myCampSearch
	 * @return myCampSearchList
	 */
	//나만의 캠핑 글 검색
	public ArrayList<MyCamp> searchMyCampList(MyCampSearch myCampSearch);
	
	
	//나만의 캠핑 댓글 메소드 (myCampComment)

	
	/** 나만의 캠핑 댓글 전체 조회 서비스
	 * @return list
	 */
	//나만의 캠핑 댓글 내용 조회
	public ArrayList<MyCampComment> selectMyCampComment();

	/** 나만의 캠핑 댓글 등록 서비스
	 * @param myCampComment
	 * @return result
	 */
	//나만의 캠핑 댓글 쓰기
	public abstract int insertMyCampComment(MyCampComment myCampComment, MultipartFile file, HttpServletRequest request);

	/** 나만의 캠핑 댓글 수정용 서비스
	 * @param notice
	 * @return result
	 */
	//나만의 캠핑 댓글 수정
	public int updateMyCampComment(MyCampComment myCampComment);

	/** 나만의 캠핑 댓글 삭제용 서비스
	 * @param nId
	 * @return result
	 */
	//나만의 캠핑 댓글 삭제
	public abstract int deleteMyCampComment(int mId);

}
