<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<jsp:useBean id="cart" class="com.bc.mybatis.Cart" scope="session"/>

<% 
	//1. 파라미터 값 추출
	String p_num = request.getParameter("p_num");
	int su = Integer.parseInt(request.getParameter("su"));
	
	//2. 수량 변경
	cart.setQuant(p_num, su);
	
	//3. 돌아가기
	response.sendRedirect("cartList.jsp");
%>