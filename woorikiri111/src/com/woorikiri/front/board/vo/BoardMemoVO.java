package com.woorikiri.front.board.vo;

import java.util.Date;

public class BoardMemoVO {
	private int sno;
	private String boardId;
	private int boardSno;
	private String writerId;
	private String writerNm;
	private String writerNick;
	private String memo;
	private String writerPw;
	private int memNo;
	private Date regDt;
	private Date modDt;
	private int groupNo;
	private int groupThread;
	private String isSecretReply;
	
	public BoardMemoVO() {
		super();
	}

	public int getSno() {
		return sno;
	}

	public void setSno(int sno) {
		this.sno = sno;
	}

	public String getBoardId() {
		return boardId;
	}

	public void setBoardId(String boardId) {
		this.boardId = boardId;
	}

	public int getBoardSno() {
		return boardSno;
	}

	public void setBoardSno(int boardSno) {
		this.boardSno = boardSno;
	}

	public String getWriterId() {
		return writerId;
	}

	public void setWriterId(String writerId) {
		this.writerId = writerId;
	}

	public String getWriterNm() {
		return writerNm;
	}

	public void setWriterNm(String writerNm) {
		this.writerNm = writerNm;
	}

	public String getWriterNick() {
		return writerNick;
	}

	public void setWriterNick(String writerNick) {
		this.writerNick = writerNick;
	}

	public String getMemo() {
		return memo;
	}

	public void setMemo(String memo) {
		this.memo = memo;
	}

	public String getWriterPw() {
		return writerPw;
	}

	public void setWriterPw(String writerPw) {
		this.writerPw = writerPw;
	}

	public int getMemNo() {
		return memNo;
	}

	public void setMemNo(int memNo) {
		this.memNo = memNo;
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

	public int getGroupNo() {
		return groupNo;
	}

	public void setGroupNo(int groupNo) {
		this.groupNo = groupNo;
	}

	public int getGroupThread() {
		return groupThread;
	}

	public void setGroupThread(int groupThread) {
		this.groupThread = groupThread;
	}

	public String getIsSecretReply() {
		return isSecretReply;
	}

	public void setIsSecretReply(String isSecretReply) {
		this.isSecretReply = isSecretReply;
	}

	@Override
	public String toString() {
		return "BoardMemoVO [sno=" + sno + ", boardId=" + boardId + ", boardSno=" + boardSno + ", writerId=" + writerId
				+ ", writerNm=" + writerNm + ", writerNick=" + writerNick + ", memo=" + memo + ", writerPw=" + writerPw
				+ ", memNo=" + memNo + ", regDt=" + regDt + ", modDt=" + modDt + ", groupNo=" + groupNo
				+ ", groupThread=" + groupThread + ", isSecretReply=" + isSecretReply + "]";
	}
	
	
}
