package com.greit.weys.mypage;

public class MypageVO {

	private String usrNm;
	private String usrTel;
	private String usrEmail;
	private String barcode;
	private String barcodeUrl;
	private String identified;
	private int rsvCnt;

	private int usrId;
	private String existPwd;
	private String newPwd;
	private String usrNmId;
	private String encKey;
	private String agree;
	private String excNoti;
	public String getUsrNm() {
		return usrNm;
	}
	public void setUsrNm(String usrNm) {
		this.usrNm = usrNm;
	}
	public String getUsrTel() {
		return usrTel;
	}
	public void setUsrTel(String usrTel) {
		this.usrTel = usrTel;
	}
	public String getUsrEmail() {
		return usrEmail;
	}
	public void setUsrEmail(String usrEmail) {
		this.usrEmail = usrEmail;
	}
	public String getBarcode() {
		return barcode;
	}
	public void setBarcode(String barcode) {
		this.barcode = barcode;
	}
	public String getBarcodeUrl() {
		return barcodeUrl;
	}
	public void setBarcodeUrl(String barcodeUrl) {
		this.barcodeUrl = barcodeUrl;
	}
	public String getIdentified() {
		return identified;
	}
	public void setIdentified(String identified) {
		this.identified = identified;
	}
	public int getRsvCnt() {
		return rsvCnt;
	}
	public void setRsvCnt(int rsvCnt) {
		this.rsvCnt = rsvCnt;
	}
	public String getExistPwd() {
		return existPwd;
	}
	public void setExistPwd(String existPwd) {
		this.existPwd = existPwd;
	}
	public String getNewPwd() {
		return newPwd;
	}
	public void setNewPwd(String newPwd) {
		this.newPwd = newPwd;
	}
	public int getUsrId() {
		return usrId;
	}
	public void setUsrId(int usrId) {
		this.usrId = usrId;
	}
	public String getEncKey() {
		return encKey;
	}
	public void setEncKey(String encKey) {
		this.encKey = encKey;
	}
	public String getUsrNmId() {
		return usrNmId;
	}
	public void setUsrNmId(String usrNmId) {
		this.usrNmId = usrNmId;
	}
	public String getAgree() {
		return agree;
	}
	public void setAgree(String agree) {
		if(agree.equals("true"))
			this.agree = "Y";
		else
			this.agree = "N";
	}
	public String getExcNoti() {
		return excNoti;
	}
	public void setExcNoti(String excNoti) {
		if(excNoti.equals("true"))
			this.excNoti = "Y";
		else
			this.excNoti = "N";
	}
	@Override
	public String toString() {
		return "MypageVO [usrNm=" + usrNm + ", usrTel=" + usrTel + ", usrEmail=" + usrEmail + ", barcode=" + barcode
				+ ", barcodeUrl=" + barcodeUrl + ", identified=" + identified + ", rsvCnt=" + rsvCnt + ", usrId="
				+ usrId + ", existPwd=" + existPwd + ", newPwd=" + newPwd + ", usrNmId=" + usrNmId + ", encKey="
				+ encKey + ", agree=" + agree + ", excNoti=" + excNoti + "]";
	}
	
}
