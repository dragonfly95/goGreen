package org.kh.camp.member.controller;

import org.kh.camp.member.domain.Member;
import org.kh.camp.member.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class MemberController {

	@Autowired
	private MemberService mService;
	
	//로그인페이지로 이동
	@RequestMapping("loginView.do")
	public String loginView() {
		return "/member/loginPage";
	}
	
	//로그인
		@RequestMapping(value="login.do", method=RequestMethod.POST)
		public String memberLogin(Member mem, Model model) {
			
			/*Member loginUser = mService.loginMember(mem);
			
			if(loginUser != null) {
				model.addAttribute("loginUser", loginUser);
				model.addAttribute("msg", "로그인 성공!");
				return "home";
			}else {
				model.addAttribute("msg", "로그인 실패!");
				return "common/errorPage";
			}*/
			return null;
			
		}
		
		//로그아웃
		@RequestMapping("logout.do")
		public String memberLogout(SessionStatus status) {
			//Session.invalidate();을 썼지만 Spring에서는 status도 쓴다.
			//SessionStatus는 세션의 상태를 관리하는 객체
			status.setComplete();
			return "redirect:home.do";
		}
		
		//회원가입 페이지로 뷰를 이동시키는 메소드
		@RequestMapping("enrollView.do")
		public String enrollView() {
			//member-context.xml에서 주소를 WEB-INF/views/member/ .jsp를 해두었기때문에 파일명만 적으면 된다.
			return "member/memberJoin";
		}
		
		
		// 회원가입
		@RequestMapping(value="minsert.do", method=RequestMethod.POST)
		public String memberInsert (Member mem, Model model) {
			
			/*int result = mService.insertMember(mem);
			if(result > 0 ) {
				return "redirect:home.do";
			}else {
				model.addAttribute("msg", "회원 가입 실패");
				return "common/errorPage";
			}*/
			
			return null;
			
		}
		
		
		// 아이디 중복 검사
		// Spring에서 ajax를 쓸때 ResponseBody을 쓴다.
		@ResponseBody		// ResponseBody	: 데이터의 값을 true값으로 보내겠다는 의미!!, 안쓰면 문자열자체를 보냄
		@RequestMapping("dupid.do")
		public String idDuplicateCheck(String mId){
		//키값을 userId라고해서 userId라고 해야함
			
			/*boolean isUsale = mService.checkIdDup(userId) == 0 ? true : false;
			
			return isUsale + ""; //boolean형을 String형으로 변환하기 위해서 + ""을함
			*/
			
			return null;
		}
		
		//회원 정보 페이지로 이동
		@RequestMapping("myinfo.do")
		public String myInfoView() {
			//return "member/myPage";
			return null;
		}
		
		//회원 정보 수정
		@RequestMapping("mupdate.do")
		public String memberUpadte(Member mem, Model model, RedirectAttributes rd) {
			//name값이 다르면 @requestParam을 써서 가져온다. 
			//RedirectAttributes
			// Redirect시 데이터를 전달할 수 있는 객체
			
			// addFlashAttribute() 메소드
			// Redirect시 데이터 전달 시 URL에 데이터가 노출되지 않게 하는 메소드
			
			/*
			
			int result = mService.updateMember(mem);
			if( result > 0 ) {
				model.addAttribute("loginUser",mem);
				rd.addFlashAttribute("msg","정보 수정 성공!");
				return "redirect:home.do";
			}else {
				model.addAttribute("msg","정보 수정 실패");
				return "common/errorPage";
			}*/
			
			return null;
			
		}
		
		// 회원 탈퇴
		@RequestMapping("mdelete.do")
		public String memberDelete(String mId, SessionStatus status, Model model) {
			
			/*int result = mService.deleteMember(userId);
			if( result > 0 ) {
				status.setComplete(); //세션파괴
				model.addAttribute("msg",userId+"회원 탈퇴!");
				return "redirect:home.do";
			}else {
				model.addAttribute("msg","회원 탈퇴 실패");
				return "common/errorPage";
			}*/
			
			return null;
			
		}
		
		
}
