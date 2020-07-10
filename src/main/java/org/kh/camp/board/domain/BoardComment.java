package org.kh.camp.board.domain;

import java.sql.Date;

public class BoardComment {

	private int commentNo;
	private int bNo;
	private int refBoardNo;
	private String comment;
	private Date commentDate;
	
	public BoardComment() {}

	public BoardComment(int commentNo, int bNo, int refBoardNo, String comment, Date commentDate) {
		super();
		this.commentNo = commentNo;
		this.bNo = bNo;
		this.refBoardNo = refBoardNo;
		this.comment = comment;
		this.commentDate = commentDate;
	}

	public int getCommentNo() {
		return commentNo;
	}

	public void setCommentNo(int commentNo) {
		this.commentNo = commentNo;
	}

	public int getbNo() {
		return bNo;
	}

	public void setbNo(int bNo) {
		this.bNo = bNo;
	}

	public int getRefBoardNo() {
		return refBoardNo;
	}

	public void setRefBoardNo(int refBoardNo) {
		this.refBoardNo = refBoardNo;
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
		return "BoardComment [commentNo=" + commentNo + ", bNo=" + bNo + ", refBoardNo=" + refBoardNo + ", comment="
				+ comment + ", commentDate=" + commentDate + "]";
	}
	
	
}
