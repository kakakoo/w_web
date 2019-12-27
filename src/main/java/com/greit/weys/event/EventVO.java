package com.greit.weys.event;

import java.util.List;

public class EventVO {
	private int eventId;
	private String eventBnr;
	private String eventImg;
	private List<String> imgList;
	private int couponId;
	private String startDt;
	private String endDt;
	private String eventSt;
	private String eventTp;
	private String eventTitle;
	private int btnPst;
	private String eventTxt;
	public int getEventId() {
		return eventId;
	}
	public void setEventId(int eventId) {
		this.eventId = eventId;
	}
	public String getEventBnr() {
		return eventBnr;
	}
	public void setEventBnr(String eventBnr) {
		this.eventBnr = eventBnr;
	}
	public String getEventImg() {
		return eventImg;
	}
	public void setEventImg(String eventImg) {
		this.eventImg = eventImg;
	}
	public List<String> getImgList() {
		return imgList;
	}
	public void setImgList(List<String> imgList) {
		this.imgList = imgList;
	}
	public int getCouponId() {
		return couponId;
	}
	public void setCouponId(int couponId) {
		this.couponId = couponId;
	}
	public String getStartDt() {
		return startDt;
	}
	public void setStartDt(String startDt) {
		this.startDt = startDt;
	}
	public String getEndDt() {
		return endDt;
	}
	public void setEndDt(String endDt) {
		this.endDt = endDt;
	}
	public String getEventSt() {
		return eventSt;
	}
	public void setEventSt(String eventSt) {
		this.eventSt = eventSt;
	}
	public String getEventTp() {
		return eventTp;
	}
	public void setEventTp(String eventTp) {
		this.eventTp = eventTp;
	}
	public String getEventTitle() {
		return eventTitle;
	}
	public void setEventTitle(String eventTitle) {
		this.eventTitle = eventTitle;
	}
	public int getBtnPst() {
		return btnPst;
	}
	public void setBtnPst(int btnPst) {
		this.btnPst = btnPst;
	}
	public String getEventTxt() {
		return eventTxt;
	}
	public void setEventTxt(String eventTxt) {
		this.eventTxt = eventTxt;
	}
	@Override
	public String toString() {
		return "EventVO [eventId=" + eventId + ", eventBnr=" + eventBnr + ", eventImg=" + eventImg + ", imgList="
				+ imgList + ", couponId=" + couponId + ", startDt=" + startDt + ", endDt=" + endDt + ", eventSt="
				+ eventSt + ", eventTp=" + eventTp + ", eventTitle=" + eventTitle + ", btnPst=" + btnPst + ", eventTxt="
				+ eventTxt + "]";
	}
}
