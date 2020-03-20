package com.woorikiri.common.vo;

public class categoryVO {
	private String CaCd;				//카테고리코드
	private String CaNm;				//카테고리이름
	private String CaDisplayFl;			//카테고리노출선택여부	
	private String CaDelFl;				//카테고리삭제선택여부
	
	public String getCaCd() {
		return CaCd;
	}
	public void setCaCd(String caCd) {
		CaCd = caCd;
	}
	public String getCaNm() {
		return CaNm;
	}
	public void setCaNm(String caNm) {
		CaNm = caNm;
	}
	public String getCaDisplayFl() {
		return CaDisplayFl;
	}
	public void setCaDisplayFl(String caDisplayFl) {
		CaDisplayFl = caDisplayFl;
	}
	public String getCaDelFl() {
		return CaDelFl;
	}
	public void setCaDelFl(String caDelFl) {
		CaDelFl = caDelFl;
	}
	
	@Override
	public String toString() {
		return "categoryVO [CaCd=" + CaCd + ", CaNm=" + CaNm + ", CaDisplayFl=" + CaDisplayFl + ", CaDelFl=" + CaDelFl
				+ "]";
	}
	
	
}
