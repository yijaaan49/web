package com.woorikiri.front.moim.FreeVO;

public class BoardFileVO {
	private String bdId,  bfNo, bfSource, bfFile, 
				   bfDownload, bfFileUrl, bfThumbUrl, bfWidth, bfHeight,
				   bfType, bfDate;

	private int bdSno;
	
	public String getBdId() {
		return bdId;
	}

	public void setBdId(String bdId) {
		this.bdId = bdId;
	}

	public int getBdSno() {
		return bdSno;
	}

	public void setBdSno(int bdSno) {
		this.bdSno = bdSno;
	}

	public String getBfNo() {
		return bfNo;
	}

	public void setBfNo(String bfNo) {
		this.bfNo = bfNo;
	}

	public String getBfSource() {
		return bfSource;
	}

	public void setBfSource(String bfSource) {
		this.bfSource = bfSource;
	}

	public String getBfFile() {
		return bfFile;
	}

	public void setBfFile(String bfFile) {
		this.bfFile = bfFile;
	}

	public String getBfDownload() {
		return bfDownload;
	}

	public void setBfDownload(String bfDownload) {
		this.bfDownload = bfDownload;
	}

	public String getBfFileUrl() {
		return bfFileUrl;
	}

	public void setBfFileUrl(String bfFileUrl) {
		this.bfFileUrl = bfFileUrl;
	}

	public String getBfThumbUrl() {
		return bfThumbUrl;
	}

	public void setBfThumbUrl(String bfThumbUrl) {
		this.bfThumbUrl = bfThumbUrl;
	}

	public String getBfWidth() {
		return bfWidth;
	}

	public void setBfWidth(String bfWidth) {
		this.bfWidth = bfWidth;
	}

	public String getBfHeight() {
		return bfHeight;
	}

	public void setBfHeight(String bfHeight) {
		this.bfHeight = bfHeight;
	}

	public String getBfType() {
		return bfType;
	}

	public void setBfType(String bfType) {
		this.bfType = bfType;
	}

	public String getBfDate() {
		return bfDate;
	}

	public void setBfDate(String bfDate) {
		this.bfDate = bfDate;
	}

	@Override
	public String toString() {
		return "BoardFileVO [bdId=" + bdId + ", bdSno=" + bdSno + ", bfNo=" + bfNo + ", bfSource=" + bfSource
				+ ", bfFile=" + bfFile + ", bfDownload=" + bfDownload + ", bfFileUrl=" + bfFileUrl + ", bfThumbUrl="
				+ bfThumbUrl + ", bfWidth=" + bfWidth + ", bfHeight=" + bfHeight + ", bfType=" + bfType + ", bfDate="
				+ bfDate + "]";
	}
}
