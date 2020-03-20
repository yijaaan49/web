<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<jsp:useBean id="cart" class="com.bc.mybatis.Cart" scope="session"/>

<% 
	//1. 파라미터 값 추출
	String p_num = request.getParameter("p_num");

	//2. 카트(cart)에서 제품 삭제
	cart.delProduct(p_num);
	
	//3. 돌아가기
	response.sendRedirect("cartList.jsp");
%>