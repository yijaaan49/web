package com.woorikiri.front.board.vo;
/*
생성자 : 박수현
생성날짜: 2020-01-16 
 */
public class FaqVO {
	String category ;
	String subject;
	String contents ;
	String answer ;
	String isBest ;
	String sortNo ;
	String bestSortNo;
	String regDt ;
	String modDt;
	
	public FaqVO() {
		super();
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public String getAnswer() {
		return answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}

	public String getIsBest() {
		return isBest;
	}

	public void setIsBest(String isBest) {
		this.isBest = isBest;
	}

	public String getSortNo() {
		return sortNo;
	}

	public void setSortNo(String sortNo) {
		this.sortNo = sortNo;
	}

	public String getBestSortNo() {
		return bestSortNo;
	}

	public void setBestSortNo(String bestSortNo) {
		this.bestSortNo = bestSortNo;
	}

	public String getRegDt() {
		return regDt;
	}

	public void setRegDt(String regDt) {
		this.regDt = regDt;
	}

	public String getModDt() {
		return modDt;
	}

	public void setModDt(String modDt) {
		this.modDt = modDt;
	}

	@Override
	public String toString() {
		return "FaqVO [category=" + category + ", subject=" + subject + ", contents=" + contents + ", answer=" + answer
				+ ", isBest=" + isBest + ", sortNo=" + sortNo + ", bestSortNo=" + bestSortNo + ", regDt=" + regDt
				+ ", modDt=" + modDt + "]";
	}
	
	
	
}
