package com.woorikiri.front.member.vo;

import java.util.Date;
/*
Author : 이재은
RegDate : 2020-01-16
Content : memSq 필드추가, getter/setter 
*/
public class MemberVO {//생성자: 박수현
	private int memSq;
	private String memId; 
	private String memPw;
	private String memMobile;
	private String memNm;
	private String memNick;
	private String memEmail;
	private String memBirth;
	private String memGender;
	private String memFavorite;
	private Date memRegDt;
	private Date memModDt;
	private Date memLastLogin;
	private String memRegIp;
	private String memRegType;
	private String memLeaveFl;
	private Date memLeaveDt;
	private String memBlockFl;
	private Date memBlockDt;
	private String maillingFl;
	private String smsFl;
	private String privateOpenFl;
	private String memZipCode;			// 1/9 추가
	private String memZoneCode;			// 1/9 추가
	private String memAddress;			// 1/9 추가
	private String memAddressSub;		// 1/9 추가
	private String memAddressAdd;		// 1/10 추가
	
	
	public MemberVO() {
		super();
	}
	
	
	public int getMemSq() {
		return memSq;
	}


	public void setMemSq(int memSq) {
		this.memSq = memSq;
	}


	public void setMemRegDt(Date memRegDt) {
		this.memRegDt = memRegDt;
	}


	public void setMemModDt(Date memModDt) {
		this.memModDt = memModDt;
	}


	public void setMemLastLogin(Date memLastLogin) {
		this.memLastLogin = memLastLogin;
	}


	public void setMemLeaveDt(Date memLeaveDt) {
		this.memLeaveDt = memLeaveDt;
	}


	public void setMemBlockDt(Date memBlockDt) {
		this.memBlockDt = memBlockDt;
	}


	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	public String getMemPw() {
		return memPw;
	}
	public void setMemPw(String memPw) {
		this.memPw = memPw;
	}
	public String getMemMobile() {
		return memMobile;
	}
	public void setMemMobile(String memMobile) {
		this.memMobile = memMobile;
	}
	public String getMemNm() {
		return memNm;
	}
	public void setMemNm(String memNm) {
		this.memNm = memNm;
	}
	public String getMemNick() {
		return memNick;
	}
	public void setMemNick(String memNick) {
		this.memNick = memNick;
	}
	public String getMemEmail() {
		return memEmail;
	}
	public void setMemEmail(String memEmail) {
		this.memEmail = memEmail;
	}
	public String getMemBirth() {
		return memBirth;
	}
	public void setMemBirth(String memBirth) {
		this.memBirth = memBirth;
	}
	public String getMemGender() {
		return memGender;
	}
	public void setMemGender(String memGender) {
		this.memGender = memGender;
	}
	public String getMemFavorite() {
		return memFavorite;
	}
	public void setMemFavorite(String memFavorite) {
		this.memFavorite = memFavorite;
	}
	public String getMemRegIp() {
		return memRegIp;
	}
	public void setMemRegIp(String memRegIp) {
		this.memRegIp = memRegIp;
	}
	public String getMemRegType() {
		return memRegType;
	}
	public void setMemRegType(String memRegType) {
		this.memRegType = memRegType;
	}
	public String getMemLeaveFl() {
		return memLeaveFl;
	}
	public void setMemLeaveFl(String memLeaveFl) {
		this.memLeaveFl = memLeaveFl;
	}
	public String getMemBlockFl() {
		return memBlockFl;
	}
	public void setMemBlockFl(String memBlockFl) {
		this.memBlockFl = memBlockFl;
	}
	public String getMaillingFl() {
		return maillingFl;
	}
	public void setMaillingFl(String maillingFl) {
		this.maillingFl = maillingFl;
	}
	public String getSmsFl() {
		return smsFl;
	}
	public void setSmsFl(String smsFl) {
		this.smsFl = smsFl;
	}
	public String getPrivateOpenFl() {
		return privateOpenFl;
	}
	public void setPrivateOpenFl(String privateOpenFl) {
		this.privateOpenFl = privateOpenFl;
	}
	public String getMemZipCode() {
		return memZipCode;
	}
	public void setMemZipCode(String memZipCode) {
		this.memZipCode = memZipCode;
	}
	public String getMemZoneCode() {
		return memZoneCode;
	}
	public void setMemZoneCode(String memZoneCode) {
		this.memZoneCode = memZoneCode;
	}
	public String getMemAddress() {
		return memAddress;
	}
	public void setMemAddress(String memAddress) {
		this.memAddress = memAddress;
	}
	public String getMemAddressSub() {
		return memAddressSub;
	}
	public void setMemAddressSub(String memAddressSub) {
		this.memAddressSub = memAddressSub;
	}
	public String getMemAddressAdd() {
		return memAddressAdd;
	}
	public void setMemAddressAdd(String memAddressAdd) {
		this.memAddressAdd = memAddressAdd;
	}
	@Override
	public String toString() {
		return "memberVO [memId=" + memId + ", memPw=" + memPw + ", memMobile=" + memMobile + ", memNm=" + memNm
				+ ", memNick=" + memNick + ", memEmail=" + memEmail + ", memBirth=" + memBirth + ", memGender="
				+ memGender + ", memFavorite=" + memFavorite + ", memRegDt=" + memRegDt + ", memModDt=" + memModDt
				+ ", memLastLogin=" + memLastLogin + ", memRegIp=" + memRegIp + ", memRegType=" + memRegType
				+ ", memLeaveFl=" + memLeaveFl + ", memLeaveDt=" + memLeaveDt + ", memBlockFl=" + memBlockFl
				+ ", memBlockDt=" + memBlockDt + ", maillingFl=" + maillingFl + ", smsFl=" + smsFl + ", privateOpenFl="
				+ privateOpenFl + ", memZipCode=" + memZipCode + ", memZoneCode=" + memZoneCode + ", memAddress="
				+ memAddress + ", memAddressSub=" + memAddressSub + ", memAddressAdd=" + memAddressAdd + "]";
	}
	
	
	
	
	
}
