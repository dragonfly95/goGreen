package org.kh.camp.mycamp.service;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.kh.camp.mycamp.domain.MyCamp;
import org.kh.camp.mycamp.domain.MyCampComment;
import org.kh.camp.mycamp.domain.MyCampPageInfo;
import org.kh.camp.mycamp.domain.MyCampSearch;
import org.kh.camp.mycamp.store.MyCampStoreLogic;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;


@Service("mycService")
public class MyCampServiceImpl implements MyCampService{

	@Autowired
	private MyCampStoreLogic mycStore;
	
	//전체 리스트 조회
	@Override
	public ArrayList<MyCamp> selectMyCamp(MyCampPageInfo mycpi) {
		// TODO Auto-generated method stub
		return mycStore.selectMycamp(mycpi);
	}

	//페이지 데이타처리(전체리스트 꼭필요함 반드시!)
		@Override
		public int getMyCampListCount() {
			// TODO Auto-generated method stub
			return mycStore.getMyCampListCount();
		}
	
	//나만의 캠핑 상세조회 (멤버넣고)
	/*@Override
	public MyCamp selectOneMyCamp(int mId) {
		// TODO Auto-generated method stub
		return mycStore.selectOneMyCamp(mId);
	}*/
	
	//나만의 캠핑 상세조회
		@Override
		public MyCamp selectOneMyCamp(int mycNo) {
			// TODO Auto-generated method stub
			return mycStore.selectOneMyCamp(mycNo);
		}

	@Override
	public int insertMyCamp(MyCamp myCamp, MultipartFile file, HttpServletRequest request) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateMyCamp(MyCamp myCamp) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteMyCamp(int mId) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public ArrayList<MyCamp> searchMyCampList(MyCampSearch myCampSearch) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ArrayList<MyCampComment> selectMyCampComment() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int insertMyCampComment(MyCampComment myCampComment, MultipartFile file, HttpServletRequest request) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateMyCampComment(MyCampComment myCampComment) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteMyCampComment(int mId) {
		// TODO Auto-generated method stub
		return 0;
	}

}
