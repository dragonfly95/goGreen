package org.kh.camp.camping.domain;

import java.sql.Date;

public class Reservation {

	private int resNo;
	private int campNo;
	private String resYN;
	private Date resDate;
	private String mId;
	
	public Reservation() {}

	public Reservation(int resNo, int campNo, String resYN, Date resDate, String mId) {
		super();
		this.resNo = resNo;
		this.campNo = campNo;
		this.resYN = resYN;
		this.resDate = resDate;
		this.mId = mId;
	}

	public int getResNo() {
		return resNo;
	}

	public void setResNo(int resNo) {
		this.resNo = resNo;
	}

	public int getCampNo() {
		return campNo;
	}

	public void setCampNo(int campNo) {
		this.campNo = campNo;
	}

	public String getResYN() {
		return resYN;
	}

	public void setResYN(String resYN) {
		this.resYN = resYN;
	}

	public Date getResDate() {
		return resDate;
	}

	public void setResDate(Date resDate) {
		this.resDate = resDate;
	}

	public String getmId() {
		return mId;
	}

	public void setmId(String mId) {
		this.mId = mId;
	}

	@Override
	public String toString() {
		return "Reservation [resNo=" + resNo + ", campNo=" + campNo + ", resYN=" + resYN + ", resDate=" + resDate
				+ ", mId=" + mId + "]";
	}
	
	
}
