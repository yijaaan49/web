package com.bc.mybatis;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

//장바구니 역할 클래스
public class Cart {
	private List<ShopVO> list; //카트에 담긴 제품 목록
	private int total; //카트에 담긴 전체 제품가격의 합계 금액
	
	public Cart() {
		list = new ArrayList<ShopVO>();
	}

	
	public List<ShopVO> getList() {
		return list;
	}

	public int getTotal() {
		return total;
	}
	
	/*
	장바구니 담기 요청 처리(카트에 제품 추가)
	> list에 없으면 제품 추가
	> list에 동일한 제품이 있으면 수량만 하나 증가 처리
	*/
	public void addProduct(String p_num, ShopDAO dao) {
		//카트에 제품이 있는지 확인
		ShopVO vo = findProduct(p_num);
		if(vo != null) { //카트에 제품이 있음 --> 수량 증가 처리
											//1. 수량 증가 처리
			vo.setQuant(vo.getQuant() + 1);
											//2. 카트의 total 값 합산(제품 하나 가격 추가)
			total += vo.getP_saleprice();
		
		} else { //카트에 없음 --> 카트에 제품 새로 등록
											//1. p_num 조회해서 VO객체 만들기
			vo = dao.selectOne(p_num);
											//2. 수량 1개씩 증가 처리
			vo.setQuant(1);
											//3. 카트 목록에 추가
			list.add(vo);
											//4. total 값 합산(제품 하나 가격 추가)
			total += vo.getP_saleprice();
		}
	}
	
	//카트에 제품이 있는지 확인
	public ShopVO findProduct(String p_num) {
		ShopVO vo = null;
		Iterator<ShopVO> ite = list.iterator();
		while(ite.hasNext()) {
			ShopVO listVO = ite.next();
			if(listVO.getP_num().equals(p_num)) {
				vo = listVO;
				break;
			}
		}
		return vo;
	}
	
	//목록(list)에 있는 제품 삭제 처리
	public void delProduct(String p_num) {
		ShopVO vo = findProduct(p_num);
		if(vo != null) {
			list.remove(vo);
			
			//카트의 전체 제품 가격에서 삭제된 제품 금액 빼기
			total = total - vo.getTotalprice();
			vo = null;
		}
	}
	
	//수량 변경 처리
	public void setQuant(String p_num, int su) {
		ShopVO vo = findProduct(p_num);
		if(vo == null) {
			return;
		}
		//1. 카트 전체 금액 변경 처리(일단 초기화 해놓고)
		total = total - vo.getTotalprice();
		
		//2. 제품 수량 변경
		vo.setQuant(su);
		
		//3. 카트 합계 금액 + 수량 변경 후 제품 합계 금액(변경된 거 한꺼번에 더함)
		total = total + vo.getTotalprice();
	}

}







