package com.woorikiri.front.moim.vo;

public class MoimReqLogVO {
	String memId;
	String moimCd;
	String isOkFl;
	String dt;
	
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
	public String getDt() {
		return dt;
	}
	public void setDt(String dt) {
		this.dt = dt;
	}
	
	@Override
	public String toString() {
		return "MoimReqLogVO [memId=" + memId + ", moimCd=" + moimCd + ", isOkFl=" + isOkFl + ", dt=" + dt + "]";
	}
	
	
	
}
