package org.kh.camp.camping.service;

import java.util.ArrayList;

import org.kh.camp.camping.domain.Camping;
import org.kh.camp.camping.domain.Reservation;
import org.springframework.stereotype.Service;
@Service("campService")
public class CampingServiceImpl implements CampingService{

	@Override
	public String campingSearch(String name) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ArrayList selectCampingList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Camping campingDetail(int nNo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int insertReservation(Reservation res) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int selectReservation() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateReservation(Reservation res) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteReservation() {
		// TODO Auto-generated method stub
		return 0;
	}

}
