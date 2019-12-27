package com.greit.weys.common;

public class Paging {

	// 페이징 처리 
	private int pageSize = 10;	// 게시글 수 
	private int firstPageNo;	// 첫 번째 페이지 번호 
	private int prevPageNo;		// 이전 페이지 번호 
	private int startPageNo; 	// 시작 페이지 
	private int pageNo = 1;		// 페이지 번호 
	private int endPageNo;		// 끝 페이지 
	private int nextPageNo;		// 다음 페이지 번호 
	private int finalPageNo;	// 마지막 페이지 번호 
	private int totalCount;		// 게시 글 전체 수 
	private int searchPage;
	private int usrId;
	private String encKey;
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public int getFirstPageNo() {
		return firstPageNo;
	}
	public void setFirstPageNo(int firstPageNo) {
		this.firstPageNo = firstPageNo;
	}
	public int getPrevPageNo() {
		return prevPageNo;
	}
	public void setPrevPageNo(int prevPageNo) {
		this.prevPageNo = prevPageNo;
	}
	public int getStartPageNo() {
		return startPageNo;
	}
	public void setStartPageNo(int startPageNo) {
		this.startPageNo = startPageNo;
	}
	public int getPageNo() {
		return pageNo;
	}
	public void setPageNo(int pageNo) {
		this.pageNo = pageNo;
	}
	public int getEndPageNo() {
		return endPageNo;
	}
	public void setEndPageNo(int endPageNo) {
		this.endPageNo = endPageNo;
	}
	public int getNextPageNo() {
		return nextPageNo;
	}
	public void setNextPageNo(int nextPageNo) {
		this.nextPageNo = nextPageNo;
	}
	public int getFinalPageNo() {
		return finalPageNo;
	}
	public void setFinalPageNo(int finalPageNo) {
		this.finalPageNo = finalPageNo;
	}
	public int getTotalCount() {
		return totalCount;
	}
	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
		this.makepaging();
	}

	/*
	 * 페이징 생성 
	 */
	private void makepaging() {
		if(this.totalCount == 0)
			return ;
		if(this.pageNo == 0)
			this.setPageNo(1);
		if(this.pageSize == 0)
			this.setPageSize(10);
		
		int finalPage = (totalCount + (pageSize - 1)) / pageSize;
		if(this.pageNo > finalPage)
			this.setPageNo(finalPage);
		
		if(this.pageNo < 0 || this.pageNo > finalPage)
			this.pageNo = 1;
		
		boolean isNowFirst = pageNo == 1 ? true : false;
		boolean isNowFianl = pageNo == finalPage ? true : false;
		
		int startPage = 1;
		int endPage = 10;

		startPage = ((pageNo - 1) / 10) * 10 + 1;
		endPage = startPage + 10 - 1;
		
		if(endPage > finalPage)
			endPage = finalPage;
		
		this.setFirstPageNo(1);
		
		if(isNowFirst)
			this.setPrevPageNo(1);
		else
			this.setPrevPageNo(((pageNo - 1) < 1 ? 1 : (pageNo - 1)));
		
		this.setStartPageNo(startPage);
		this.setEndPageNo(endPage);
		
		if(isNowFianl)
			this.setNextPageNo(finalPage);
		else
			this.setNextPageNo(((pageNo + 1) > finalPage ? finalPage : (pageNo + 1)));
		
		this.setFinalPageNo(finalPage);
	}
	public int getUsrId() {
		return usrId;
	}
	public void setUsrId(int usrId) {
		this.usrId = usrId;
	}
	public int getSearchPage() {
		return searchPage;
	}
	public void setSearchPage(int searchPage) {
		this.searchPage = searchPage;
	}
	public String getEncKey() {
		return encKey;
	}
	public void setEncKey(String encKey) {
		this.encKey = encKey;
	}
	@Override
	public String toString() {
		return "Paging [pageSize=" + pageSize + ", firstPageNo=" + firstPageNo + ", prevPageNo=" + prevPageNo
				+ ", startPageNo=" + startPageNo + ", pageNo=" + pageNo + ", endPageNo=" + endPageNo + ", nextPageNo="
				+ nextPageNo + ", finalPageNo=" + finalPageNo + ", totalCount=" + totalCount + "]";
	}
}
