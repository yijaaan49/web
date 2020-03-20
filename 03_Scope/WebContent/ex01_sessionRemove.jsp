<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 세션에 설정된 속성 삭제 --%>
<% 
	//속성 객체를 삭제
	session.removeAttribute("attr_age"); //속성 자체를 삭제(key, value 값) --> null됨
	
	//속성(attr_age)값을 빈문자열로 초기화("" 설정)
	//session.setAttribute("attr_age", "");
	
	//ex01_session.jsp 페이지 재요청 처리(이동, 전환)
	response.sendRedirect("ex01_session.jsp");
	
%>