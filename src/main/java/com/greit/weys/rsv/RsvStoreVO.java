package com.greit.weys.rsv;

import java.util.List;
import java.util.Map;

public class RsvStoreVO {

	private int storeId;
	private String storeNm;
	private String storeAddr;
	private String storeImg;
	private String rsvImg = "";
	private String storeUrl;
	private String storeSt;
	private String storeAir;
	private String storeExc;
	private String storeCmt;
	private String storeTimeTxt;
	private String storeTag;
	private int rsvCommis;
	private int deliverCms;
	private int deliverTime;
	private int brkTm;
	private List<Map<String, Object>> rsvDate;
	public int getStoreId() {
		return storeId;
	}
	public void setStoreId(int storeId) {
		this.storeId = storeId;
	}
	public String getStoreNm() {
		return storeNm;
	}
	public void setStoreNm(String storeNm) {
		this.storeNm = storeNm;
	}
	public String getStoreAddr() {
		return storeAddr;
	}
	public void setStoreAddr(String storeAddr) {
		this.storeAddr = storeAddr;
	}
	public String getStoreImg() {
		return storeImg;
	}
	public void setStoreImg(String storeImg) {
		this.storeImg = storeImg;
	}
	public String getRsvImg() {
		return rsvImg;
	}
	public void setRsvImg(String rsvImg) {
		this.rsvImg = rsvImg;
	}
	public String getStoreUrl() {
		return storeUrl;
	}
	public void setStoreUrl(String storeUrl) {
		this.storeUrl = storeUrl;
	}
	public String getStoreSt() {
		return storeSt;
	}
	public void setStoreSt(String storeSt) {
		this.storeSt = storeSt;
	}
	public String getStoreAir() {
		return storeAir;
	}
	public void setStoreAir(String storeAir) {
		this.storeAir = storeAir;
	}
	public String getStoreExc() {
		return storeExc;
	}
	public void setStoreExc(String storeExc) {
		this.storeExc = storeExc;
	}
	public int getRsvCommis() {
		return rsvCommis;
	}
	public void setRsvCommis(int rsvCommis) {
		this.rsvCommis = rsvCommis;
	}
	public int getDeliverCms() {
		return deliverCms;
	}
	public void setDeliverCms(int deliverCms) {
		this.deliverCms = deliverCms;
	}
	public int getDeliverTime() {
		return deliverTime;
	}
	public void setDeliverTime(int deliverTime) {
		this.deliverTime = deliverTime;
	}
	public List<Map<String, Object>> getRsvDate() {
		return rsvDate;
	}
	public void setRsvDate(List<Map<String, Object>> rsvDate) {
		this.rsvDate = rsvDate;
	}
	public String getStoreCmt() {
		return storeCmt;
	}
	public void setStoreCmt(String storeCmt) {
		this.storeCmt = storeCmt;
	}
	public String getStoreTimeTxt() {
		return storeTimeTxt;
	}
	public void setStoreTimeTxt(String storeTimeTxt) {
		this.storeTimeTxt = storeTimeTxt;
	}
	public String getStoreTag() {
		return storeTag;
	}
	public void setStoreTag(String storeTag) {
		this.storeTag = storeTag;
	}
	public int getBrkTm() {
		return brkTm;
	}
	public void setBrkTm(int brkTm) {
		this.brkTm = brkTm;
	}
	@Override
	public String toString() {
		return "RsvStoreVO [storeId=" + storeId + ", storeNm=" + storeNm + ", storeAddr=" + storeAddr + ", storeImg="
				+ storeImg + ", rsvImg=" + rsvImg + ", storeUrl=" + storeUrl + ", storeSt=" + storeSt + ", storeAir="
				+ storeAir + ", storeExc=" + storeExc + ", storeCmt=" + storeCmt + ", storeTimeTxt=" + storeTimeTxt
				+ ", storeTag=" + storeTag + ", rsvCommis=" + rsvCommis + ", deliverCms=" + deliverCms
				+ ", deliverTime=" + deliverTime + ", rsvDate=" + rsvDate + "]";
	}
	
}
