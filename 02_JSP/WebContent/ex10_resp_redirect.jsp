<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	//요청한 곳으로 보내기(페이지 전환만!!)
	System.out.println(">>> ex10_resp_redirect.jsp 실행");
	String site = request.getParameter("site");
	switch(site) {
	case "naver" :
		response.sendRedirect("http://www.naver.com");
	case "daum" :
		response.sendRedirect("http://www.daum.net");
	case "google" :
		response.sendRedirect("http://www.google.com");
	}
%>