package com.greit.weys.partner;

public class PartnerVO {

	private int copId;
	private String copCd;
	private String copNm;
	private String copLogo;
	private String rsvNm;
	private int bgOpct;
	public int getCopId() {
		return copId;
	}
	public void setCopId(int copId) {
		this.copId = copId;
	}
	public String getCopCd() {
		return copCd;
	}
	public void setCopCd(String copCd) {
		this.copCd = copCd;
	}
	public String getCopNm() {
		return copNm;
	}
	public void setCopNm(String copNm) {
		this.copNm = copNm;
	}
	public String getRsvNm() {
		return rsvNm;
	}
	public void setRsvNm(String rsvNm) {
		this.rsvNm = rsvNm;
	}
	public int getBgOpct() {
		return bgOpct;
	}
	public void setBgOpct(int bgOpct) {
		this.bgOpct = bgOpct;
	}
	public String getCopLogo() {
		return copLogo;
	}
	public void setCopLogo(String copLogo) {
		this.copLogo = copLogo;
	}
	@Override
	public String toString() {
		return "PartnerVO [copId=" + copId + ", copCd=" + copCd + ", copNm=" + copNm + ", copLogo=" + copLogo
				+ ", rsvNm=" + rsvNm + ", bgOpct=" + bgOpct + "]";
	}
	
}
