package com.greit.weys.mypage;

public class CouponVO {
	private String couponCode;
	private String couponNm;
	private String couponDesc;
	private int memberCost;
	private String useSt;
	private String couponTp;
	private String dueDt;
	private int usrId;
	public String getCouponCode() {
		return couponCode;
	}
	public void setCouponCode(String couponCode) {
		this.couponCode = couponCode;
	}
	public String getCouponNm() {
		return couponNm;
	}
	public void setCouponNm(String couponNm) {
		this.couponNm = couponNm;
	}
	public String getCouponDesc() {
		return couponDesc;
	}
	public void setCouponDesc(String couponDesc) {
		this.couponDesc = couponDesc;
	}
	public int getMemberCost() {
		return memberCost;
	}
	public void setMemberCost(int memberCost) {
		this.memberCost = memberCost;
	}
	public String getUseSt() {
		return useSt;
	}
	public void setUseSt(String useSt) {
		this.useSt = useSt;
	}
	public String getCouponTp() {
		return couponTp;
	}
	public void setCouponTp(String couponTp) {
		this.couponTp = couponTp;
	}
	public String getDueDt() {
		return dueDt;
	}
	public void setDueDt(String dueDt) {
		this.dueDt = dueDt;
	}
	public int getUsrId() {
		return usrId;
	}
	public void setUsrId(int usrId) {
		this.usrId = usrId;
	}
	@Override
	public String toString() {
		return "CouponVO [couponCode=" + couponCode + ", couponNm=" + couponNm + ", couponDesc=" + couponDesc
				+ ", memberCost=" + memberCost + ", useSt=" + useSt + ", couponTp=" + couponTp + ", dueDt=" + dueDt
				+ "]";
	}
	
}
