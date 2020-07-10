package org.kh.camp.camping.service;

import java.util.ArrayList;

import org.kh.camp.camping.domain.Camping;
import org.kh.camp.camping.domain.Reservation;
import org.springframework.web.servlet.ModelAndView;

public interface CampingService {

	//캠핑장 검색
	public String campingSearch(String name);
	//캠핑장 리스트
	public ArrayList selectCampingList();

	//캠핑장 상세정보
	public Camping campingDetail(int nNO);
	

	//캠핑장 예약 하기      
	public int insertReservation(Reservation res) ;
	
	// 예약 내역 조회
	public int selectReservation() ;
	
	
	//예약 정보 수정
	public int updateReservation(Reservation res);

	//예약 취소
	public int deleteReservation();
}
