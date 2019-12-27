package com.greit.weys.main;

public class LoginVO {
	private int usrId;
	private String usrTel;
	private String usrPw;
	private String usrNation;
	private String chk;
	private String encKey;
	private String usrEmail;
	private String frdCd;
	private String ak;
	public String getUsrTel() {
		return usrTel;
	}
	public void setUsrTel(String usrTel) {
		this.usrTel = usrTel;
	}
	public String getUsrPw() {
		return usrPw;
	}
	public void setUsrPw(String usrPw) {
		this.usrPw = usrPw;
	}
	public String getUsrNation() {
		return usrNation;
	}
	public void setUsrNation(String usrNation) {
		this.usrNation = usrNation;
	}
	public String getEncKey() {
		return encKey;
	}
	public void setEncKey(String encKey) {
		this.encKey = encKey;
	}
	public String getChk() {
		return chk;
	}
	public void setChk(String chk) {
		this.chk = chk;
	}
	public int getUsrId() {
		return usrId;
	}
	public void setUsrId(int usrId) {
		this.usrId = usrId;
	}
	public String getUsrEmail() {
		return usrEmail;
	}
	public void setUsrEmail(String usrEmail) {
		this.usrEmail = usrEmail;
	}
	public String getFrdCd() {
		return frdCd;
	}
	public void setFrdCd(String frdCd) {
		this.frdCd = frdCd;
	}
	public String getAk() {
		return ak;
	}
	public void setAk(String ak) {
		this.ak = ak;
	}
	@Override
	public String toString() {
		return "LoginVO [usrTel=" + usrTel + ", usrPw=" + usrPw + ", usrNation=" + usrNation + ", chk=" + chk
				+ ", encKey=" + encKey + "]";
	}
	public boolean checkVO(){
		if(usrTel == null
				|| usrPw == null
				|| usrNation == null){
			return false;
		}
		return true;
	}
}
