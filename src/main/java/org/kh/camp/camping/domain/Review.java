package org.kh.camp.camping.domain;

import java.sql.Date;

public class Review {

	private int rvNo;
	private int resNo;
	private int campNo;
	private String mId;
	private String rvContent;
	private Date rvate;
	private int commentStar;
	
	public Review () {}

	public Review(int rvNo, int resNo, int campNo, String mId, String rvContent, Date rvate, int commentStar) {
		super();
		this.rvNo = rvNo;
		this.resNo = resNo;
		this.campNo = campNo;
		this.mId = mId;
		this.rvContent = rvContent;
		this.rvate = rvate;
		this.commentStar = commentStar;
	}

	public int getRvNo() {
		return rvNo;
	}

	public void setRvNo(int rvNo) {
		this.rvNo = rvNo;
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

	public String getmId() {
		return mId;
	}

	public void setmId(String mId) {
		this.mId = mId;
	}

	public String getRvContent() {
		return rvContent;
	}

	public void setRvContent(String rvContent) {
		this.rvContent = rvContent;
	}

	public Date getRvate() {
		return rvate;
	}

	public void setRvate(Date rvate) {
		this.rvate = rvate;
	}

	public int getCommentStar() {
		return commentStar;
	}

	public void setCommentStar(int commentStar) {
		this.commentStar = commentStar;
	}

	@Override
	public String toString() {
		return "Review [rvNo=" + rvNo + ", resNo=" + resNo + ", campNo=" + campNo + ", mId=" + mId + ", rvContent="
				+ rvContent + ", rvate=" + rvate + ", commentStar=" + commentStar + "]";
	};
	
	
	
}
