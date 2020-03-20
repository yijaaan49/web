package com.woorikiri.front.moim.vo;

import java.util.Date;

public class MoimVO {
	private String  moimSq, moimCd, moimTitle, 
					moimCa,moimMemId, moimIntro, moimDelFl, 
					moimIsOkFl, moimHit, moimDate, moimHour, 
					moimMin, moimAgeOption, moimGender, moimSdate,
					moimEdate, moimZipCode, moimAddress, moimAddressSub, 
					moimZoneCode,moimAddressAdd;
	private String moimTag;
	private int  moimCnt;
	private int  rNum;
	private Date moimRegDt;
	private Date moimModDt;
	private String BF_FILE;
	
	public String getBF_FILE() {
		return BF_FILE;
	}
	public void setBF_FILE(String bF_FILE) {
		BF_FILE = bF_FILE;
	}
	//추가 전성용
	private String moimFile;
	
	
	
	public String getMoimFile() {
		return moimFile;
	}
	public void setMoimFile(String moimFile) {
		this.moimFile = moimFile;
	}
	public Date getMoimRegDt() {
		return moimRegDt;
	}
	public void setMoimRegDt(Date moimRegDt) {
		this.moimRegDt = moimRegDt;
	}
	public Date getMoimModDt() {
		return moimModDt;
	}
	public void setMoimModDt(Date moimModDt) {
		this.moimModDt = moimModDt;
	}
	public String getMoimSq() {
		return moimSq;
	}
	public void setMoimSq(String moimSq) {
		this.moimSq = moimSq;
	}
	public String getMoimCd() {
		return moimCd;
	}
	public void setMoimCd(String moimCd) {
		this.moimCd = moimCd;
	}
	public String getMoimTitle() {
		return moimTitle;
	}
	public void setMoimTitle(String moimTitle) {
		this.moimTitle = moimTitle;
	}
	public String getMoimTag() {
		return moimTag;
	}
	public void setMoimTag(String tag) {
		this.moimTag = tag;
	}
	public String getMoimCa() {
		return moimCa;
	}
	public void setMoimCa(String moimCa) {
		this.moimCa = moimCa;
	}
	public String getMoimMemId() {
		return moimMemId;
	}
	public void setMoimMemId(String moimMemId) {
		this.moimMemId = moimMemId;
	}
	public String getMoimIntro() {
		return moimIntro;
	}
	public void setMoimIntro(String moimIntro) {
		this.moimIntro = moimIntro;
	}
	public String getMoimDelFl() {
		return moimDelFl;
	}
	public void setMoimDelFl(String moimDelFl) {
		this.moimDelFl = moimDelFl;
	}
	public String getMoimIsOkFl() {
		return moimIsOkFl;
	}
	public void setMoimIsOkFl(String moimIsOkFl) {
		this.moimIsOkFl = moimIsOkFl;
	}
	public String getMoimHit() {
		return moimHit;
	}
	public void setMoimHit(String moimHit) {
		this.moimHit = moimHit;
	}
	public String getMoimDate() {
		return moimDate;
	}
	public void setMoimDate(String moimDate) {
		this.moimDate = moimDate;
	}
	public String getMoimHour() {
		return moimHour;
	}
	public void setMoimHour(String moimHour) {
		this.moimHour = moimHour;
	}
	public String getMoimMin() {
		return moimMin;
	}
	public void setMoimMin(String moimMin) {
		this.moimMin = moimMin;
	}
	public String getMoimAgeOption() {
		return moimAgeOption;
	}
	public void setMoimAgeOption(String moimAgeOption) {
		this.moimAgeOption = moimAgeOption;
	}
	public String getMoimGender() {
		return moimGender;
	}
	public void setMoimGender(String moimGender) {
		this.moimGender = moimGender;
	}
	public String getMoimSdate() {
		return moimSdate;
	}
	public void setMoimSdate(String moimSdate) {
		this.moimSdate = moimSdate;
	}
	public String getMoimEdate() {
		return moimEdate;
	}
	public void setMoimEdate(String moimEdate) {
		this.moimEdate = moimEdate;
	}
	public String getMoimZipCode() {
		return moimZipCode;
	}
	public void setMoimZipCode(String moimZipCode) {
		this.moimZipCode = moimZipCode;
	}
	public String getMoimAddress() {
		return moimAddress;
	}
	public void setMoimAddress(String moimAddress) {
		this.moimAddress = moimAddress;
	}
	public String getMoimAddressSub() {
		return moimAddressSub;
	}
	public void setMoimAddressSub(String moimAddressSub) {
		this.moimAddressSub = moimAddressSub;
	}
	public String getMoimZoneCode() {
		return moimZoneCode;
	}
	public void setMoimZoneCode(String moimZoneCode) {
		this.moimZoneCode = moimZoneCode;
	}
	public String getMoimAddressAdd() {
		return moimAddressAdd;
	}
	public void setMoimAddressAdd(String moimAddressAdd) {
		this.moimAddressAdd = moimAddressAdd;
	}
	public int getMoimCnt() {
		return moimCnt;
	}
	public void setMoimCnt(int moimCnt) {
		this.moimCnt = moimCnt;
	}
	public int getrNum() {
		return rNum;
	}
	public void setrNum(int rNum) {
		this.rNum = rNum;
	}
	@Override
	public String toString() {
		return "MoimVO [moimSq=" + moimSq + ", moimCd=" + moimCd + ", moimTitle=" + moimTitle + ", moimCa=" + moimCa
				+ ", moimMemId=" + moimMemId + ", moimIntro=" + moimIntro + ", moimDelFl=" + moimDelFl + ", moimIsOkFl="
				+ moimIsOkFl + ", moimHit=" + moimHit + ", moimDate=" + moimDate + ", moimHour=" + moimHour
				+ ", moimMin=" + moimMin + ", moimAgeOption=" + moimAgeOption + ", moimGender=" + moimGender
				+ ", moimSdate=" + moimSdate + ", moimEdate=" + moimEdate + ", moimZipCode=" + moimZipCode
				+ ", moimAddress=" + moimAddress + ", moimAddressSub=" + moimAddressSub + ", moimZoneCode="
				+ moimZoneCode + ", moimAddressAdd=" + moimAddressAdd + ", moimTag=" + moimTag + ", moimCnt=" + moimCnt
				+ ", rNum=" + rNum + ", moimRegDt=" + moimRegDt + ", moimModDt=" + moimModDt + ", moimFile=" + moimFile
				+ "]";
	}
	
	
	

}
