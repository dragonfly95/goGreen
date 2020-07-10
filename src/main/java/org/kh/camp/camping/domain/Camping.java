package org.kh.camp.camping.domain;

public class Camping {

	private int campNo;
	private String campName;
	private String campType;
	private String rdAddr;
	private String campPhone;
	private int campPark;
	private String campCon;
	private String campSafe;
	private String campEtc;
	private String campTime;
	private String campCharge;
	private String caPhone;
	
	public Camping() {}
	
	public Camping(int campNo, String campName, String campType, String rdAddr, String campPhone, int campPark,
			String campCon, String campSafe, String campEtc, String campTime, String campCharge, String caPhone) {
		super();
		this.campNo = campNo;
		this.campName = campName;
		this.campType = campType;
		this.rdAddr = rdAddr;
		this.campPhone = campPhone;
		this.campPark = campPark;
		this.campCon = campCon;
		this.campSafe = campSafe;
		this.campEtc = campEtc;
		this.campTime = campTime;
		this.campCharge = campCharge;
		this.caPhone = caPhone;
	}

	public int getCampNo() {
		return campNo;
	}

	public void setCampNo(int campNo) {
		this.campNo = campNo;
	}

	public String getCampName() {
		return campName;
	}

	public void setCampName(String campName) {
		this.campName = campName;
	}

	public String getCampType() {
		return campType;
	}

	public void setCampType(String campType) {
		this.campType = campType;
	}

	public String getRdAddr() {
		return rdAddr;
	}

	public void setRdAddr(String rdAddr) {
		this.rdAddr = rdAddr;
	}

	public String getCampPhone() {
		return campPhone;
	}

	public void setCampPhone(String campPhone) {
		this.campPhone = campPhone;
	}

	public int getCampPark() {
		return campPark;
	}

	public void setCampPark(int campPark) {
		this.campPark = campPark;
	}

	public String getCampCon() {
		return campCon;
	}

	public void setCampCon(String campCon) {
		this.campCon = campCon;
	}

	public String getCampSafe() {
		return campSafe;
	}

	public void setCampSafe(String campSafe) {
		this.campSafe = campSafe;
	}

	public String getCampEtc() {
		return campEtc;
	}

	public void setCampEtc(String campEtc) {
		this.campEtc = campEtc;
	}

	public String getCampTime() {
		return campTime;
	}

	public void setCampTime(String campTime) {
		this.campTime = campTime;
	}

	public String getCampCharge() {
		return campCharge;
	}

	public void setCampCharge(String campCharge) {
		this.campCharge = campCharge;
	}

	public String getCaPhone() {
		return caPhone;
	}

	public void setCaPhone(String caPhone) {
		this.caPhone = caPhone;
	}

	@Override
	public String toString() {
		return "Camping [campNo=" + campNo + ", campName=" + campName + ", campType=" + campType + ", rdAddr=" + rdAddr
				+ ", campPhone=" + campPhone + ", campPark=" + campPark + ", campCon=" + campCon + ", campSafe="
				+ campSafe + ", campEtc=" + campEtc + ", campTime=" + campTime + ", campCharge=" + campCharge
				+ ", caPhone=" + caPhone + "]";
	}
	
	
	
}
