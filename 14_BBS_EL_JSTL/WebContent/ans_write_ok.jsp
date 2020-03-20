<%@page import="com.bc.mybatis.DAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 전달받은 데이터를 DB에 댓글 입력처리
	입력 후 게시글 상세페이지로 이동(댓글 입력상태 확인)
 --%>
<%
	request.setCharacterEncoding("UTF-8");

	String cPage = request.getParameter("cPage");
%>
<%-- 전달받은 데이터를 DB에 입력하기 위해 CommVO 객체에 담기 --%>
 	<jsp:useBean id="cvo" class="com.bc.mybatis.CommVO"/>
 	<jsp:setProperty property="*" name="cvo"/>
<% 
	cvo.setIp(request.getRemoteAddr());

	//cvo 변수(속성)에 저장된 데이터 사용해서 DB에 입력
	DAO.insertComment(cvo);
	
	//입력 후 페이지 이동 처리(view.jsp)
	response.sendRedirect("view.jsp?b_idx=" + cvo.getB_idx() + "&cPage=" + cPage);
	
%>