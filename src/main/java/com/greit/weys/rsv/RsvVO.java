package com.greit.weys.rsv;

public class RsvVO {
	private int rsvId;
	private String rsvNo;
	private String rsvSt;
	private int usrId;
	private int copId = 0;
	private int storeId;
	private int couponId;
	private String couponNm;
	private String unitCd;
	private double basicRate;
	private double basicRateBank;
	private double basicRateUser;
	private int rsvAmnt;
	private int getAmnt;
	private int cms;
	private String rsvDt;
	private String rsvTm;
	private String rsvForm;
	private String rsvPaper = "R";

	private int bonusId;
	private String bonusNm = "";
	private int weysBonus;
	private int weysBonusVal;
	private double weysCommis;
	private int weysCommisVal;
	
	private String cerChk;
	private String usrNm;
	private String usrNmId;
	private String usrTel;
	private String usrEmail;

	private String vbankNm;
	private String vbankCd;
	private String vbankHolder;
	private String vbankDue;
	private String icmDttm;
	private String merchantUid;
	private String imp_uid;
	
	private String storeNm;

	private String encKey;
	private String rBankNm;
	private String rBankCd;
	private int cancelCms;
	private String unit;
	private String refId;
	private String tid;
	public int getRsvId() {
		return rsvId;
	}
	public void setRsvId(int rsvId) {
		this.rsvId = rsvId;
	}
	public String getRsvNo() {
		return rsvNo;
	}
	public void setRsvNo(String rsvNo) {
		this.rsvNo = rsvNo;
	}
	public String getRsvSt() {
		return rsvSt;
	}
	public void setRsvSt(String rsvSt) {
		this.rsvSt = rsvSt;
	}
	public int getUsrId() {
		return usrId;
	}
	public void setUsrId(int usrId) {
		this.usrId = usrId;
	}
	public int getStoreId() {
		return storeId;
	}
	public void setStoreId(int storeId) {
		this.storeId = storeId;
	}
	public int getCouponId() {
		return couponId;
	}
	public void setCouponId(int couponId) {
		this.couponId = couponId;
	}
	public String getCouponNm() {
		return couponNm;
	}
	public void setCouponNm(String couponNm) {
		this.couponNm = couponNm;
	}
	public String getUnitCd() {
		return unitCd;
	}
	public void setUnitCd(String unitCd) {
		this.unitCd = unitCd;
	}
	public double getBasicRate() {
		return basicRate;
	}
	public void setBasicRate(double basicRate) {
		this.basicRate = basicRate;
	}
	public int getRsvAmnt() {
		return rsvAmnt;
	}
	public void setRsvAmnt(int rsvAmnt) {
		this.rsvAmnt = rsvAmnt;
	}
	public int getGetAmnt() {
		return getAmnt;
	}
	public void setGetAmnt(int getAmnt) {
		this.getAmnt = getAmnt;
	}
	public String getRsvDt() {
		return rsvDt;
	}
	public void setRsvDt(String rsvDt) {
		this.rsvDt = rsvDt;
	}
	public String getRsvTm() {
		return rsvTm;
	}
	public void setRsvTm(String rsvTm) {
		this.rsvTm = rsvTm;
	}
	public String getRsvForm() {
		return rsvForm;
	}
	public void setRsvForm(String rsvForm) {
		this.rsvForm = rsvForm;
	}
	public String getRsvPaper() {
		return rsvPaper;
	}
	public void setRsvPaper(String rsvPaper) {
		this.rsvPaper = rsvPaper;
	}
	public int getBonusId() {
		return bonusId;
	}
	public void setBonusId(int bonusId) {
		this.bonusId = bonusId;
	}
	public String getBonusNm() {
		return bonusNm;
	}
	public void setBonusNm(String bonusNm) {
		this.bonusNm = bonusNm;
	}
	public double getWeysCommis() {
		return weysCommis;
	}
	public void setWeysCommis(double weysCommis) {
		this.weysCommis = weysCommis;
	}
	public int getWeysBonus() {
		return weysBonus;
	}
	public void setWeysBonus(int weysBonus) {
		this.weysBonus = weysBonus;
	}
	public int getWeysCommisVal() {
		return weysCommisVal;
	}
	public void setWeysCommisVal(int weysCommisVal) {
		this.weysCommisVal = weysCommisVal;
	}
	public int getWeysBonusVal() {
		return weysBonusVal;
	}
	public void setWeysBonusVal(int weysBonusVal) {
		this.weysBonusVal = weysBonusVal;
	}
	public String getCerChk() {
		return cerChk;
	}
	public void setCerChk(String cerChk) {
		this.cerChk = cerChk;
	}
	public String getUsrNm() {
		return usrNm;
	}
	public void setUsrNm(String usrNm) {
		this.usrNm = usrNm;
	}
	public String getUsrNmId() {
		return usrNmId;
	}
	public void setUsrNmId(String usrNmId) {
		this.usrNmId = usrNmId;
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
	public String getVbankNm() {
		return vbankNm;
	}
	public void setVbankNm(String vbankNm) {
		this.vbankNm = vbankNm;
	}
	public String getVbankCd() {
		return vbankCd;
	}
	public void setVbankCd(String vbankCd) {
		this.vbankCd = vbankCd;
	}
	public String getVbankHolder() {
		return vbankHolder;
	}
	public void setVbankHolder(String vbankHolder) {
		this.vbankHolder = vbankHolder;
	}
	public String getVbankDue() {
		return vbankDue;
	}
	public void setVbankDue(String vbankDue) {
		this.vbankDue = vbankDue;
	}
	public String getIcmDttm() {
		return icmDttm;
	}
	public void setIcmDttm(String icmDttm) {
		this.icmDttm = icmDttm;
	}
	public String getMerchantUid() {
		return merchantUid;
	}
	public void setMerchantUid(String merchantUid) {
		this.merchantUid = merchantUid;
	}
	public String getImp_uid() {
		return imp_uid;
	}
	public void setImp_uid(String imp_uid) {
		this.imp_uid = imp_uid;
	}
	public String getStoreNm() {
		return storeNm;
	}
	public void setStoreNm(String storeNm) {
		this.storeNm = storeNm;
	}
	public String getEncKey() {
		return encKey;
	}
	public void setEncKey(String encKey) {
		this.encKey = encKey;
	}
	public String getrBankNm() {
		return rBankNm;
	}
	public void setrBankNm(String rBankNm) {
		this.rBankNm = rBankNm;
	}
	public String getrBankCd() {
		return rBankCd;
	}
	public void setrBankCd(String rBankCd) {
		this.rBankCd = rBankCd;
	}
	public String getUnit() {
		return unit;
	}
	public void setUnit(String unit) {
		this.unit = unit;
	}
	public double getBasicRateBank() {
		return basicRateBank;
	}
	public void setBasicRateBank(double basicRateBank) {
		this.basicRateBank = basicRateBank;
	}
	public double getBasicRateUser() {
		return basicRateUser;
	}
	public void setBasicRateUser(double basicRateUser) {
		this.basicRateUser = basicRateUser;
	}
	public String getRefId() {
		return refId;
	}
	public void setRefId(String refId) {
		this.refId = refId;
	}
	public String getTid() {
		return tid;
	}
	public void setTid(String tid) {
		this.tid = tid;
	}
	public int getCms() {
		return cms;
	}
	public void setCms(int cms) {
		this.cms = cms;
	}
	public int getCancelCms() {
		return cancelCms;
	}
	public void setCancelCms(int cancelCms) {
		this.cancelCms = cancelCms;
	}
	public int getCopId() {
		return copId;
	}
	public void setCopId(int copId) {
		this.copId = copId;
	}
	@Override
	public String toString() {
		return "RsvVO [rsvId=" + rsvId + ", rsvNo=" + rsvNo + ", rsvSt=" + rsvSt + ", usrId=" + usrId + ", storeId="
				+ storeId + ", couponId=" + couponId + ", couponNm=" + couponNm + ", unitCd=" + unitCd + ", basicRate="
				+ basicRate + ", basicRateBank=" + basicRateBank + ", rsvAmnt=" + rsvAmnt + ", getAmnt=" + getAmnt
				+ ", rsvDt=" + rsvDt + ", rsvTm=" + rsvTm + ", rsvForm=" + rsvForm + ", rsvPaper=" + rsvPaper
				+ ", bonusId=" + bonusId + ", bonusNm=" + bonusNm + ", weysCommis=" + weysCommis + ", weysBonus="
				+ weysBonus + ", weysCommisVal=" + weysCommisVal + ", weysBonusVal=" + weysBonusVal + ", cerChk="
				+ cerChk + ", usrNm=" + usrNm + ", usrNmId=" + usrNmId + ", usrTel=" + usrTel + ", usrEmail=" + usrEmail
				+ ", vbankNm=" + vbankNm + ", vbankCd=" + vbankCd + ", vbankHolder=" + vbankHolder + ", vbankDue="
				+ vbankDue + ", icmDttm=" + icmDttm + ", merchantUid=" + merchantUid + ", imp_uid=" + imp_uid
				+ ", storeNm=" + storeNm + ", encKey=" + encKey + ", rBankNm=" + rBankNm + ", rBankCd=" + rBankCd
				+ ", unit=" + unit + "]";
	}
	
}
