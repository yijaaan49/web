<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
<%-- 세션 초기화 --%>
<% 
	//세션 초기화, 세션 자체가 종료되고 재시작하면 새로운 세션이..!
	//remove는 속성값이 삭제됨
	session.invalidate();

	//ex01_session.jsp 재요청 처리
	response.sendRedirect("ex01_session.jsp");
%>