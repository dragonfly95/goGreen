package org.kh.camp.file.domain;

public class File {

	private int fileNo;
	private int contentNo;
	private String boardType;
	private String origName;
	private String newName;
	private String filePath;
	
	public File( ) {}

	public File(int fileNo, int contentNo, String boardType, String origName, String newName, String filePath) {
		super();
		this.fileNo = fileNo;
		this.contentNo = contentNo;
		this.boardType = boardType;
		this.origName = origName;
		this.newName = newName;
		this.filePath = filePath;
	}

	public int getFileNo() {
		return fileNo;
	}

	public void setFileNo(int fileNo) {
		this.fileNo = fileNo;
	}

	public int getContentNo() {
		return contentNo;
	}

	public void setContentNo(int contentNo) {
		this.contentNo = contentNo;
	}

	public String getBoardType() {
		return boardType;
	}

	public void setBoardType(String boardType) {
		this.boardType = boardType;
	}

	public String getOrigName() {
		return origName;
	}

	public void setOrigName(String origName) {
		this.origName = origName;
	}

	public String getNewName() {
		return newName;
	}

	public void setNewName(String newName) {
		this.newName = newName;
	}

	public String getFilePath() {
		return filePath;
	}

	public void setFilePath(String filePath) {
		this.filePath = filePath;
	}

	@Override
	public String toString() {
		return "File [fileNo=" + fileNo + ", contentNo=" + contentNo + ", boardType=" + boardType + ", origName="
				+ origName + ", newName=" + newName + ", filePath=" + filePath + "]";
	}
	
	
}
