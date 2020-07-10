package org.kh.camp.used.domain;

import java.util.Date;

/*\\\\\\\\댓글\\\\\\\\\*/
public class UsedReply {
	
	private int usedRId;
	private String usedRContent;
	private int usedRedfRid;
	private String usedRWriter;
	private Date usedRCreateDate;
	private String usedRStatus;
	
	public UsedReply() {}

	public UsedReply(int usedRId, String usedRContent, int usedRedfBid, String usedRWriter, Date usedRCreateDate,
			Date usedRModifyDate, String usedRStatus) {
		super();
		this.usedRId = usedRId;
		this.usedRContent = usedRContent;
		this.usedRedfRid = usedRedfBid;
		this.usedRWriter = usedRWriter;
		this.usedRCreateDate = usedRCreateDate;
		this.usedRStatus = usedRStatus;
	}

	public int getUsedRId() {
		return usedRId;
	}

	public void setUsedRId(int usedRId) {
		this.usedRId = usedRId;
	}

	public String getUsedRContent() {
		return usedRContent;
	}

	public void setUsedRContent(String usedRContent) {
		this.usedRContent = usedRContent;
	}

	public int getUsedRedfBid() {
		return usedRedfRid;
	}

	public void setUsedRedfBid(int usedRedfBid) {
		this.usedRedfRid = usedRedfBid;
	}

	public String getUsedRWriter() {
		return usedRWriter;
	}

	public void setUsedRWriter(String usedRWriter) {
		this.usedRWriter = usedRWriter;
	}

	public Date getUsedRCreateDate() {
		return usedRCreateDate;
	}

	public void setUsedRCreateDate(Date usedRCreateDate) {
		this.usedRCreateDate = usedRCreateDate;
	}

	public String getUsedRStatus() {
		return usedRStatus;
	}

	public void setUsedRStatus(String usedRStatus) {
		this.usedRStatus = usedRStatus;
	}

	@Override
	public String toString() {
		return "UsedReply [usedRId=" + usedRId + ", usedRContent=" + usedRContent + ", usedRedfBid=" + usedRedfRid
				+ ", usedRWriter=" + usedRWriter + ", usedRCreateDate=" + usedRCreateDate 
				+ ", usedRStatus=" + usedRStatus + "]";
	}
	
	

}
