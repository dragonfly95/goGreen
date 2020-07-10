package org.kh.camp.member.store;

import org.kh.camp.member.domain.Member;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberStoreLogic {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	//로그인
	public Member selectMember(Member mem) {
		Member loginUser = sqlSession.selectOne("memberMapper.selectOne", mem);
		return loginUser;
	}
	
	//회원가입
	public int insetMember(Member mem) {
		int result = sqlSession.insert("memberMapper.insertMember", mem);
		return result;
	}
	
	//아이디 중복검사
	public int checkIdDup(String id) {
		return sqlSession.selectOne("memberMapper.checkIdDup", id);
	}
	
	//회원 정보 수정
	public int updateMember(Member mem) {
		return sqlSession.update("memberMapper.updateMember",mem);
	}
	
	//회원 탈퇴
	public int deleteMember(String userId) {
		return sqlSession.delete("memberMapper.deleteMember",userId);
	}
}
