package com.woorikiri.front.board.vo;

import java.util.Date;

public class BoardVO {
	/*	Name: 게시판 VO	*/ 
	/*	PART: QNA 게시판	*/
	/*	Author: 이재은	*/
	/*	RegDate : 2020-01-10	*/
	
	private int rNum;
	private int sno;
	private String bdId;
	private int groupNo;
	private int groupThread;
	private String channel;
	private int memNo;
	private String apiExtraData;
	private String wrNm;
	private String wrId;
	private String wrEmail;
	private String wrNick;
	private String wrHp;
	private String wrPwd;
	private String wrIp;
	private String wrMobile;
	private String wrSubject;
	private String wrContent;
	private String wrUrlLink;
	private String isNotice;
	private String isSecret;
	private int hit;
	private int memoCnt;
	private String cate;
	private String isDelete;
	private Date regDt;
	private Date modDt;
	private String replyStatus;
	private String eventStartDt;
	private String eventEndDt;
	private String answerSubject;
	private String answerContent;
	private int answerManagerNo;
	private Date answerModDt;
	private String isMobile;
	private String subSubject;
	private int recommend;
	private String boUploadStorage;
	private String boUploadPath;
	private String boUploadThumPath;
	private int parentSno;
	private int groupSno;
	
	public int getGroupSno() {
		return groupSno;
	}
	public void setGroupSno(int groupSno) {
		this.groupSno = groupSno;
	}
	public int getGroupThread() {
		return groupThread;
	}
	public void setGroupThread(int groupThread) {
		this.groupThread = groupThread;
	}	
	public int getrNum() {
		return rNum;
	}
	public void setrNum(int rNum) {
		this.rNum = rNum;
	}
	public int getSno() {
		return sno;
	}
	public void setSno(int sno) {
		this.sno = sno;
	}
	public String getBdId() {
		return bdId;
	}
	public void setBdId(String bdId) {
		this.bdId = bdId;
	}
	public int getGroupNo() {
		return groupNo;
	}
	public void setGroupNo(int groupNo) {
		this.groupNo = groupNo;
	}
	public String getChannel() {
		return channel;
	}
	public void setChannel(String channel) {
		this.channel = channel;
	}
	public int getMemNo() {
		return memNo;
	}
	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}
	public String getApiExtraData() {
		return apiExtraData;
	}
	public void setApiExtraData(String apiExtraData) {
		this.apiExtraData = apiExtraData;
	}
	public String getWrNm() {
		return wrNm;
	}
	public void setWrNm(String wrNm) {
		this.wrNm = wrNm;
	}
	public String getWrId() {
		return wrId;
	}
	public void setWrId(String wrId) {
		this.wrId = wrId;
	}
	public String getWrEmail() {
		return wrEmail;
	}
	public void setWrEmail(String wrEmail) {
		this.wrEmail = wrEmail;
	}
	public String getWrNick() {
		return wrNick;
	}
	public void setWrNick(String wrNick) {
		this.wrNick = wrNick;
	}
	public String getWrHp() {
		return wrHp;
	}
	public void setWrHp(String wrHp) {
		this.wrHp = wrHp;
	}
	public String getWrPwd() {
		return wrPwd;
	}
	public void setWrPwd(String wrPwd) {
		this.wrPwd = wrPwd;
	}
	public String getWrIp() {
		return wrIp;
	}
	public void setWrIp(String wrIp) {
		this.wrIp = wrIp;
	}
	public String getWrMobile() {
		return wrMobile;
	}
	public void setWrMobile(String wrMobile) {
		this.wrMobile = wrMobile;
	}
	public String getWrSubject() {
		return wrSubject;
	}
	public void setWrSubject(String wrSubject) {
		this.wrSubject = wrSubject;
	}
	public String getWrContent() {
		return wrContent;
	}
	public void setWrContent(String wrContent) {
		this.wrContent = wrContent;
	}
	public String getWrUrlLink() {
		return wrUrlLink;
	}
	public void setWrUrlLink(String wrUrlLink) {
		this.wrUrlLink = wrUrlLink;
	}
	public String getIsNotice() {
		return isNotice;
	}
	public void setIsNotice(String isNotice) {
		this.isNotice = isNotice;
	}
	public String getIsSecret() {
		return isSecret;
	}
	public void setIsSecret(String isSecret) {
		this.isSecret = isSecret;
	}
	public int getHit() {
		return hit;
	}
	public void setHit(int hit) {
		this.hit = hit;
	}
	public int getMemoCnt() {
		return memoCnt;
	}
	public void setMemoCnt(int memoCnt) {
		this.memoCnt = memoCnt;
	}
	public String getCate() {
		return cate;
	}
	public void setCate(String cate) {
		this.cate = cate;
	}
	public String getIsDelete() {
		return isDelete;
	}
	public void setIsDelete(String isDelete) {
		this.isDelete = isDelete;
	}
	public Date getRegDt() {
		return regDt;
	}
	public void setRegDt(Date regDt) {
		this.regDt = regDt;
	}
	public Date getModDt() {
		return modDt;
	}
	public void setModDt(Date modDt) {
		this.modDt = modDt;
	}
	public String getReplyStatus() {
		return replyStatus;
	}
	public void setReplyStatus(String replyStatus) {
		this.replyStatus = replyStatus;
	}
	public String getEventStartDt() {
		return eventStartDt;
	}
	public void setEventStartDt(String eventStartDt) {
		this.eventStartDt = eventStartDt;
	}
	public String getEventEndDt() {
		return eventEndDt;
	}
	public void setEventEndDt(String eventEndDt) {
		this.eventEndDt = eventEndDt;
	}
	public String getAnswerSubject() {
		return answerSubject;
	}
	public void setAnswerSubject(String answerSubject) {
		this.answerSubject = answerSubject;
	}
	public String getAnswerContent() {
		return answerContent;
	}
	public void setAnswerContent(String answerContent) {
		this.answerContent = answerContent;
	}
	public int getAnswerManagerNo() {
		return answerManagerNo;
	}
	public void setAnswerManagerNo(int answerManagerNo) {
		this.answerManagerNo = answerManagerNo;
	}
	public Date getAnswerModDt() {
		return answerModDt;
	}
	public void setAnswerModDt(Date answerModDt) {
		this.answerModDt = answerModDt;
	}
	public String getIsMobile() {
		return isMobile;
	}
	public void setIsMobile(String isMobile) {
		this.isMobile = isMobile;
	}
	public String getSubSubject() {
		return subSubject;
	}
	public void setSubSubject(String subSubject) {
		this.subSubject = subSubject;
	}
	public int getRecommend() {
		return recommend;
	}
	public void setRecommend(int recommend) {
		this.recommend = recommend;
	}
	public String getBoUploadStorage() {
		return boUploadStorage;
	}
	public void setBoUploadStorage(String boUploadStorage) {
		this.boUploadStorage = boUploadStorage;
	}
	public String getBoUploadPath() {
		return boUploadPath;
	}
	public void setBoUploadPath(String boUploadPath) {
		this.boUploadPath = boUploadPath;
	}
	public String getBoUploadThumPath() {
		return boUploadThumPath;
	}
	public void setBoUploadThumPath(String boUploadThumPath) {
		this.boUploadThumPath = boUploadThumPath;
	}
	public int getParentSno() {
		return parentSno;
	}
	public void setParentSno(int parentSno) {
		this.parentSno = parentSno;
	}
	@Override
	public String toString() {
		return "BoardVO [sno=" + sno + ", bdId=" + bdId + ", groupNo=" + groupNo + ", groupThread=" + groupThread
				+ ", channel=" + channel + ", memNo=" + memNo + ", apiExtraData=" + apiExtraData + ", wrNm=" + wrNm
				+ ", wrId=" + wrId + ", wrEmail=" + wrEmail + ", wrNick=" + wrNick + ", wrHp=" + wrHp + ", wrPwd="
				+ wrPwd + ", wrIp=" + wrIp + ", wrMobile=" + wrMobile + ", wrSubject=" + wrSubject + ", wrContent="
				+ wrContent + ", wrUrlLink=" + wrUrlLink + ", isNotice=" + isNotice + ", isSecret=" + isSecret
				+ ", hit=" + hit + ", memoCnt=" + memoCnt + ", cate=" + cate + ", isDelete=" + isDelete + ", regDt="
				+ regDt + ", modDt=" + modDt + ", replyStatus=" + replyStatus + ", eventStartDt=" + eventStartDt
				+ ", eventEndDt=" + eventEndDt + ", answerSubject=" + answerSubject + ", answerContent=" + answerContent
				+ ", answerManagerNo=" + answerManagerNo + ", answerModDt=" + answerModDt + ", isMobile=" + isMobile
				+ ", subSubject=" + subSubject + ", recommend=" + recommend + ", boUploadStorage=" + boUploadStorage
				+ ", boUploadPath=" + boUploadPath + ", boUploadThumPath=" + boUploadThumPath + ", parentSno="
				+ parentSno + "]";
	}
	
	
	
}
