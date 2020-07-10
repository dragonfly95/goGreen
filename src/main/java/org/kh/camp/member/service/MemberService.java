package org.kh.camp.member.service;

import java.util.ArrayList;

import org.kh.camp.member.domain.Member;

public interface MemberService {

	/**
	 * 로그인 서비스를 위한 메소드/ 회원 한명 세부정보조회
	 * @param mem
	 * @return loginUser
	 */
	public Member loginMember(Member mem);
	
	/**
	 * 아이디 중복 검사
	 * @param id
	 * @return result
	 */
	public int checkIdDup(String id);
	
	/**
	 * 회원 가입 서비스를 위한 메소드
	 * @param mem
	 * @return result
	 */
	public int insertMember(Member mem);
	
	/**
	 * 회원 정보 수정 서비스를 위한 메소드
	 * @param mem
	 * @return result
	 */
	public int updateMember(Member mem);
	
	/**
	 * 회원 탈퇴 서비스를 위한 메소드
	 * @param id
	 * @return result
	 */
	
	public int deleteMember(String id);
	
}
