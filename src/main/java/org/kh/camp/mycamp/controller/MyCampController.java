package org.kh.camp.mycamp.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.kh.camp.mycamp.domain.MyCamp;
import org.kh.camp.mycamp.domain.MyCampComment;
import org.kh.camp.mycamp.domain.MyCampPageInfo;
import org.kh.camp.mycamp.domain.MyCampPagination;
import org.kh.camp.mycamp.domain.MyCampSearch;
import org.kh.camp.mycamp.service.MyCampService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;


@Controller
public class MyCampController {

	@Autowired
	private MyCampService mycService;
	   
	// 나만의 캠핑 게시판 전체 조회 
	   @RequestMapping("myclist.do")
	   public ModelAndView selectMyCamp(ModelAndView mv, @RequestParam(value="page", required=false)Integer page) { 
	      
		   int mycCurrentPage =(page !=null) ? page : 1;
		   int mycListCount = mycService.getMyCampListCount();
		   MyCampPageInfo mycpi = MyCampPagination.getPageInfo(mycCurrentPage, mycListCount);
		   
	      ArrayList<MyCamp> list = mycService.selectMyCamp(mycpi);
	      
	      if ( !list.isEmpty() ) {
	         mv.addObject("list", list);
	         mv.addObject("mycpi", mycpi);
	         mv.setViewName("myCamp/myCampMain");
	      }else {
	         mv.addObject("msg", "공지사항 목록조회 실패");
	         mv.setViewName("common/errorPage");
	      }
	      return mv;

	   }
	   
	 //나만의 캠핑 글 검색
	   //@RequestMapping()
	   public String searchMyCampList(MyCampSearch myCampSearch, Model model) {
	      
	      ArrayList<MyCamp> searchMyCampList = mycService.searchMyCampList(myCampSearch);
	      
	     /* model.addAttribute("myCamplist", searchMyCampList);
	      model.addAttribute("searchMyCamp", myCampSearch);*/
	      //검색창에 기록을 남아있게한다
	     /* return "notice/noticeListView";*/
	      return null;
	   }
	   
	   // 나만의 캠핑 게시판 세부 내용조회
	   @RequestMapping("mycdetail.do")
	   public ModelAndView selectOneMyCamp(ModelAndView mv, int mycNo, @RequestParam("page") Integer page) {
		   int currentPage = page != null ? page: 1;
		   //mycService.listViewCount(mycNo); 조회수 증가
		  // MyCamp myCamp = mycService.selectOneMyCamp(mId); (멤버 넣고)
		   MyCamp myCamp = mycService.selectOneMyCamp(mycNo);
	      if( myCamp != null) {
	         mv.addObject("myCamp", myCamp)
	         	.addObject("currentPage", currentPage)
				.setViewName("myCamp/myCampDetail");
	      }else {
	    	  mv.addObject("msg", "게시글 상세조회 실패!")
				.setViewName("common/errorPage");
	      }
	      return mv;
	   }
	   
	   //나만의 캠핑 게시글 쓰기로이동
	  /* @RequestMapping("")
	   public String insertMyCampView() {
	      return "notice/noticeWriteForm";
	   }*/
	   
	   //나만의 캠핑 게시글 쓰기
	    // @RequestMapping()
	     public String insertMyCamp(MyCamp myCamp, Model model, MultipartFile uploadFile, HttpServletRequest request) {
	        //@RequestParam에 required속성은 해당 파라미터가 반드시 필수인지 여부, 기본값은 true
	        //required=true, Null이면 입력시 400에러 발생!
	        
	        // Multipart 지원 기능 -> 스프링 설정파일에  MultipartResolver등록 (bean으로 등록 : root-context.xml)
	        //  MultipartResolver는  Multipart형식으로 된 데이터가 전송된 경우
	        // 해당 데이터를 스프링MVC에서 사용할 수 있도록 변환해주는 기능을 한다.
	        
	   /*     //파일을 서버에 저장하는 작업
	        if( !uploadFile.getOriginalFilename().equals("") ) {
	           String filePath = saveFile(uploadFile, request);
	           
	           if(filePath != null) {
	               myCamp.setFilePath(uploadFile.getOriginalFilename());
	            }

	        }*/
	        
	        //데이터를 디비에 저장하는 작업
	        int result = 0;
	        String path = null;
	        
	        result = mycService.insertMyCamp(myCamp, uploadFile, request);
	      /*  if( result > 0 ) {
	           path = "redirect:nlist.do";
	        }else {
	           model.addAttribute("msg", "공지사항 등록 실패");
	           path = "common/errorPage";
	        }*/
	        return path;
	        
	     }
	    
	   /*  
	     // 파일 저장 메소드
	     public String saveFile(MultipartFile file, HttpServletRequest request) {
	        
	      // 파일 저장 경로 설정
	        String root
	           = request.getSession().getServletContext().getRealPath("resources");
	        String savePath = root + "\\nuploadFiles";
	        //resources폴더밑에 nuploadFiles폴더에 저장된다.

	        // 저장 폴더 선택
	        File folder = new File(savePath);

	        // 만약 폴더가 없을 경우 자동 생성
	        if(!folder.exists()) {
	           folder.mkdir();
	        }
	        
	        String filePath = folder + "\\" +file.getOriginalFilename();

	        //실제로 저장되는것
	        try {
	           //파일 저장
	         file.transferTo(new File(filePath));
	      } catch (IllegalStateException e) {
	         // TODO Auto-generated catch block
	         e.printStackTrace();
	      } catch (IOException e) {
	         // TODO Auto-generated catch block
	         e.printStackTrace();
	      }
	        return filePath;
	     }*/
	   
	   //나만의 캠핑 글 수정페이지로 이동
	     /*@RequestMapping("")
	     public String updateMyCampView(int nId, Model model) {
	        model.addAttribute("notice", nService.selectOne(nId));
	        return "notice/noticeUpdateView";
	     }*/
	     
	   //나만의 캠핑 글 수정
	  // @RequestMapping(value="", method = RequestMethod.POST)
	     public String updateMyCamp(MyCamp myCamp, Model model, HttpServletRequest request, MultipartFile reloadFile) {
	     
	     /*   //새로 업로드된 파일이 있을 경우
	        if (reloadFile != null && !reloadFile.isEmpty()) {
	            // 기존 업로드된 파일이 있을 경우
	            if ( notice.getFilePath() != null ) {
	               // 기존 파일 삭제
	               deleteFile(notice.getFilePath(), request);
	            }
	            
	            //새로 업로드 된 파일 저장
	              String savePath = saveFile(reloadFile, request);
	              
	              //새로 업로드된 파일이 잘 저장이 되었다면 디비 저장
	              if( savePath != null ) {
	                 //파일 이름만 DB에 저장
	                 notice.setFilePath(reloadFile.getOriginalFilename());
	              }
	        }
	        
	        int result = nService.updateNotice(notice);
	        if(result > 0) {
	           return "redirect:ndetail.do?nId=" + notice.getnId();
	        }else {
	           model.addAttribute("msg", "공지사항 수정 실패");
	           return "common/errorPage";
	        }*/
	        
		   return null;
	     }
	     
	 /*    //파일 삭제 메소드
	     // 공지글 등록 실패 또는 글 수정으로 업로드 파일이 변한 경우  저장되어 있는 기존 파일 삭제
	     public void deleteFile(String fileName, HttpServletRequest request) {
	        
	         // 파일 저장 경로 설정
	           String root = request.getSession().getServletContext().getRealPath("resources");
	           String savePath = root + "\nuploadFiles";
	           // 삭제할 파일 경로 + 파일명
	           File deleteFile = new File(savePath + "\\" + fileName);
	           // 해당 파일이 존재할 경우 삭제
	           if (deleteFile.exists()) {
	               deleteFile.delete();
	           }
	     }*/
	    
	     
	   	//나만의 캠핑 글 삭제
	     // 1. DB 데이터 삭제
	     // 2. DB 데이터 삭제 성공시 저장된 파일 삭제
	     // 3. 삭제 후 공지사항 목록으로 redirect
	    // @RequestMapping("")
	     public String deleteMyCamp(int mId, Model model, HttpServletRequest request, RedirectAttributes rd) {
	        
	      /*  //파일을 지우기 위해  nId 공지사항 조회
	        Notice notice = nService.selectOne(nId); //가지고 있는 파일의 이름을 가져온다
	        int result = nService.deleteNotice(nId);
	        
	        if( result >  0 ) {
	           if(notice.getFilePath() != null) {
	              //파일이 진짜 있다면 삭제
	              deleteFile(notice.getFilePath(), request);
	           }
	           rd.addFlashAttribute("msg", "공지사항 삭제 성공");
	           return "redirect:nlist.do";
	        }else {
	           model.addAttribute("msg", "공지사항 삭제 실패");
	           return "common/errorPage";
	        }*/
	    	 return null;
	     }

	
	     //나만의 캠핑 댓글=================================================
	     
	   //나만의 캠핑 댓글 내용 조회
	 	public ModelAndView selectMyCampComment(ModelAndView mv){
	 		
	 		//ArrayList<MyCampComment> list = myCampService.selectMyCampComment();
	 		
	 		return mv; 
	 	}
	     
	 	//나만의 캠핑 댓글 쓰기
		public int insertMyCampComment(MyCampComment myCampComment, MultipartFile file, HttpServletRequest request) {
	        return 0;
		}
		
		
		//나만의 캠핑 댓글 수정
		public int updateMyCampComment(MyCampComment myCampComment) {
			return 0;
		}

		
		//나만의 캠핑 댓글 삭제
		public int deleteMyCampComment(int mId) {
			return 0;
		}
		
		
		
		
}
