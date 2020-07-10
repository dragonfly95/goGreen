package org.kh.camp.used.domain;
import java.sql.Date;
public class UsedBoard {
	private int usedId;
	private String usedTitle;
	private String usedWriter;
	private String usedContent;
	private String usedOriginalFileName;
	private String usedRenameFileName;
	private int usedCount;
	private Date usedCreateDate;
	private Date usedModifyDate;
	private String usedStatus;
	
	public UsedBoard() {}
	
	public UsedBoard(int usedId, String usedTitle, String usedWriter, String usedContent, String usedOriginalFileName,
			String usedRenameFileName, int usedCount, Date usedCreateDate, Date usedModifyDate, String usedStatus) {
		super();
		this.usedId = usedId;
		this.usedTitle = usedTitle;
		this.usedWriter = usedWriter;
		this.usedContent = usedContent;
		this.usedOriginalFileName = usedOriginalFileName;
		this.usedRenameFileName = usedRenameFileName;
		this.usedCount = usedCount;
		this.usedCreateDate = usedCreateDate;
		this.usedModifyDate = usedModifyDate;
		this.usedStatus = usedStatus;
	}
	public int getUsedId() {
		return usedId;
	}
	public void setUsedId(int usedId) {
		this.usedId = usedId;
	}
	public String getUsedTitle() {
		return usedTitle;
	}
	public void setUsedTitle(String usedTitle) {
		this.usedTitle = usedTitle;
	}
	public String getUsedWriter() {
		return usedWriter;
	}
	public void setUsedWriter(String usedWriter) {
		this.usedWriter = usedWriter;
	}
	public String getUsedContent() {
		return usedContent;
	}
	public void setUsedContent(String usedContent) {
		this.usedContent = usedContent;
	}
	public String getUsedOriginalFileName() {
		return usedOriginalFileName;
	}
	public void setUsedOriginalFileName(String usedOriginalFileName) {
		this.usedOriginalFileName = usedOriginalFileName;
	}
	public String getUsedRenameFileName() {
		return usedRenameFileName;
	}
	public void setUsedRenameFileName(String usedRenameFileName) {
		this.usedRenameFileName = usedRenameFileName;
	}
	public int getUsedCount() {
		return usedCount;
	}
	public void setUsedCount(int usedCount) {
		this.usedCount = usedCount;
	}
	public Date getUsedCreateDate() {
		return usedCreateDate;
	}
	public void setUsedCreateDate(Date usedCreateDate) {
		this.usedCreateDate = usedCreateDate;
	}
	public Date getUsedModifyDate() {
		return usedModifyDate;
	}
	public void setUsedModifyDate(Date usedModifyDate) {
		this.usedModifyDate = usedModifyDate;
	}
	public String getUsedStatus() {
		return usedStatus;
	}
	public void setUsedStatus(String usedStatus) {
		this.usedStatus = usedStatus;
	}
	@Override
	public String toString() {
		return "UsedBoard [usedId=" + usedId + ", usedTitle=" + usedTitle + ", usedWriter=" + usedWriter
				+ ", usedContent=" + usedContent + ", usedOriginalFileName=" + usedOriginalFileName
				+ ", usedRenameFileName=" + usedRenameFileName + ", usedCount=" + usedCount + ", usedCreateDate="
				+ usedCreateDate + ", usedModifyDate=" + usedModifyDate + ", usedStatus=" + usedStatus + "]";
	}
}
