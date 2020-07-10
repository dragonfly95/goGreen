package org.kh.camp.board.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.kh.camp.board.domain.BoardComment;
import org.kh.camp.board.service.BoardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.JsonIOException;

@Controller
public class BoardController {

	@Autowired
	private BoardService bService;
	
	public ModelAndView boardList(ModelAndView mv, @RequestParam(value="page",required=false)Integer page) {
		
		
		return mv;
	}
	
	public ModelAndView boardDetail(ModelAndView mv, int bId,@RequestParam("page")Integer page) {
	
		return mv;
	
	}
	
	public void getReplyList(HttpServletResponse response, int bId) throws JsonIOException, IOException {
	
		
	}
	
	public String addReply(BoardComment bc, HttpSession session) {
		
	
		return "";
	}
	
}
