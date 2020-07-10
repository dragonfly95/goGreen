package org.kh.camp.member.controller;

import org.kh.camp.member.domain.Member;
import org.kh.camp.member.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class MyPageController {

	@Autowired
	private MemberService mService;
	
	
	//마이페이지로 이동
	@RequestMapping(".do")
	public String myPageInfoView() {
		//return "member/myPage";
		return null;
	}
			
		
}
