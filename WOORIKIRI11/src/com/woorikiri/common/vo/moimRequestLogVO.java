package com.woorikiri.common.vo;

public class moimRequestLogVO {
	private String memId;
	private String moimCd;
	private String isOkFl;
	private String dtDate;
	
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	public String getMoimCd() {
		return moimCd;
	}
	public void setMoimCd(String moimCd) {
		this.moimCd = moimCd;
	}
	public String getIsOkFl() {
		return isOkFl;
	}
	public void setIsOkFl(String isOkFl) {
		this.isOkFl = isOkFl;
	}
	public String getDtDate() {
		return dtDate;
	}
	public void setDtDate(String dtDate) {
		this.dtDate = dtDate;
	}
	
	@Override
	public String toString() {
		return "moimRequestLogVO [memId=" + memId + ", moimCd=" + moimCd + ", isOkFl=" + isOkFl + ", dtDate=" + dtDate
				+ "]";
	}
	
	
}
