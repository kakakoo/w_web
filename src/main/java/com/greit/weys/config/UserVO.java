package com.greit.weys.config;

public class UserVO {
	private int usrId;
	private String usrNm;
	private String usrTel;
	private String hBnr = "Y";
	private String encKey;
	public int getUsrId() {
		return usrId;
	}
	public void setUsrId(int usrId) {
		this.usrId = usrId;
	}
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
	public String gethBnr() {
		return hBnr;
	}
	public void sethBnr(String hBnr) {
		this.hBnr = hBnr;
	}
	public String getEncKey() {
		return encKey;
	}
	public void setEncKey(String encKey) {
		this.encKey = encKey;
	}
	@Override
	public String toString() {
		return "UserVO [usrId=" + usrId + ", usrNm=" + usrNm + ", usrTel=" + usrTel + ", hBnr=" + hBnr + ", encKey="
				+ encKey + "]";
	}

}
