package org.kh.camp.mycamp.domain;

import java.sql.Date;

public class MyCampComment {

	private int commentNo;
	private int mycNo;
	private String comment;
	private Date commentDate;
	
	public MyCampComment() {}

	public MyCampComment(int commentNo, int mycNo, String comment, Date commentDate) {
		super();
		this.commentNo = commentNo;
		this.mycNo = mycNo;
		this.comment = comment;
		this.commentDate = commentDate;
	}

	public int getCommentNo() {
		return commentNo;
	}

	public void setCommentNo(int commentNo) {
		this.commentNo = commentNo;
	}

	public int getMycNo() {
		return mycNo;
	}

	public void setMycNo(int mycNo) {
		this.mycNo = mycNo;
	}

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

	public Date getCommentDate() {
		return commentDate;
	}

	public void setCommentDate(Date commentDate) {
		this.commentDate = commentDate;
	}

	@Override
	public String toString() {
		return "MyCampComment [commentNo=" + commentNo + ", mycNo=" + mycNo + ", comment=" + comment + ", commentDate="
				+ commentDate + "]";
	}
	
	
}
