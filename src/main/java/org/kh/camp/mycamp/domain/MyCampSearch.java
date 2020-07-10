package org.kh.camp.mycamp.domain;

public class MyCampSearch {

	private String myCampSearchPlace;
	private String myCampSearchTitle;
	private String myCampexistFile;

	public MyCampSearch() {
	}

	public MyCampSearch(String myCampSearchPlace, String myCampSearchTitle, String myCampexistFile) {
		super();
		this.myCampSearchPlace = myCampSearchPlace;
		this.myCampSearchTitle = myCampSearchTitle;
		this.myCampexistFile = myCampexistFile;
	}

	public String getMyCampSearchPlace() {
		return myCampSearchPlace;
	}

	public void setMyCampSearchPlace(String myCampSearchPlace) {
		this.myCampSearchPlace = myCampSearchPlace;
	}

	public String getMyCampSearchTitle() {
		return myCampSearchTitle;
	}

	public void setMyCampSearchTitle(String myCampSearchTitle) {
		this.myCampSearchTitle = myCampSearchTitle;
	}

	public String getMyCampexistFile() {
		return myCampexistFile;
	}

	public void setMyCampexistFile(String myCampexistFile) {
		this.myCampexistFile = myCampexistFile;
	}

	@Override
	public String toString() {
		return "MyCampSearch [myCampSearchPlace=" + myCampSearchPlace + ", myCampSearchTitle=" + myCampSearchTitle
				+ ", myCampexistFile=" + myCampexistFile + "]";
	}

}
