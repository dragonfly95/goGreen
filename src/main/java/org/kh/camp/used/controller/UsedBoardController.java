package org.kh.camp.used.controller;

import java.io.IOException;
import java.net.URLEncoder;
import java.util.ArrayList;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.kh.camp.member.domain.Member;
import org.kh.camp.mycamp.domain.MyCampPageInfo;
import org.kh.camp.mycamp.domain.MyCampPagination;
import org.kh.camp.used.domain.UsedBoard;
import org.kh.camp.used.domain.UsedReply;
import org.kh.camp.used.service.UsedBoardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonIOException;




@Controller
public class UsedBoardController {

	@Autowired
	private UsedBoardService uBoardService;


	// 목록  usedList.jsp
	@RequestMapping("ulist.do")
	   public ModelAndView usedBoardList(ModelAndView mv,
			   @RequestParam(value="page",required=false)Integer page) {
	      
		   int usedCurrentPage = (page != null) ? page : 1;
		   int usedListCount = uBoardService.getUsedListCount();
//		   UsedPageInfo pi = Pagination.getUsedPageInfo(usedCurrentPage, usedListCount);
		MyCampPageInfo pi = MyCampPagination.getPageInfo(usedCurrentPage, usedListCount);
		ArrayList<UsedBoard> uList = uBoardService.selectUsedList(pi);

/*
	      if (!uList.isEmpty()) {
	         mv.addObject("uList", uList);
	         mv.addObject("pi",pi);
	         mv.setViewName("used/usedList");
	      } else {
	         mv.addObject("msg", "게시글 전체조회 실패");
	         mv.setViewName("common/errorPage");
	      }
*/
			mv.addObject("uList", uList);
			mv.addObject("pi",pi);
			mv.setViewName("used/usedList");
	      return mv;
	   }

	   // 상세화면 - usedDetail.jsp
	   @RequestMapping("udetail.do")
	   public ModelAndView usedBoardDetail(ModelAndView mv, int usedId) {
		   /*int currentPage = 1;
		   if (page != null) {
		   	currentPage = page;
		   }*/

		   uBoardService.addReadCount(usedId); // 조회수 증가
		   UsedBoard uBoard = uBoardService.selectUsedBoard(usedId);//게시글 상세조회
		   mv.addObject("usedBoard", uBoard)
				   .setViewName("used/usedDetail");
		   return mv;
		   /*
		   if ( uBoard != null ) {
			   //메소드 체이닝 방식 (이어서 썼다)
		   	mv.addObject("usedBoard", uBoard)
		   		.setViewName("used/usedDetail");
		   }else {
		   	mv.addObject("msg", "게시글 상세조회 실패!")
		   	.setViewName("common/errorPage");
		   }
		   return mv;
		    */
	   }



	   // 수정
	   @RequestMapping(value = "uModify.do")
	   public ModelAndView uModify(ModelAndView mv, int usedId) {
		   mv.setViewName("used/usedModify");
		   return mv;
	   }

		// 글쓰기
		@RequestMapping(value = "uWrite.do")
		public ModelAndView uWrite(ModelAndView mv) {
			mv.setViewName("used/usedWrite");
			return mv;
		}


	   @RequestMapping("uList.do")
	   public void getReplyList(HttpServletResponse response, int bId) 
	   										throws JsonIOException, IOException {
	   	ArrayList<UsedReply> urList = uBoardService.selectUsedReplyList(bId);
	   	
	   	for (UsedReply ur : urList) {
	   		ur.setUsedRContent(URLEncoder.encode(ur.getUsedRContent(), "utf-8"));
	   	}
	   	Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
	   	gson.toJson(urList, response.getWriter());
	   	// 기존에 JSONOBject, JSONArray를 이용해서 JSON형태로 만들어줬음
	   	// 여기선 Gson 라이브러리를 사용하고자 함.
	   	// reply 객체를 JSON형태로 변환해줘서 data로 보내줘야함.
	   	// { 'bId' : 1, 'bName' : '제목' }
	   }

		   @RequestMapping("addReply.camp")
		   @ResponseBody //ViewResolver를 거치지 않고 body에 String 값으로 전송하는 어노테이션
		   public String addReply(UsedReply ur, HttpSession session) {
		   	Member loginUser = (Member)session.getAttribute("loginUser");
		   	String usedRWriter = loginUser.getmId();
		   	ur.setUsedRWriter(usedRWriter);
		   	int result = uBoardService.insertUsedReply(ur);
		   	if(result > 0) {
		   		return "success";
		   	}else {
		   		return "fail";
	  }
   }
}













