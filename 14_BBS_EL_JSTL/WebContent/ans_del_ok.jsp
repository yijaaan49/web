<%@page import="com.bc.mybatis.DAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 전달받은 파라미터 값을 사용해서 DB에서 삭제 처리
	삭제 후 게시글 상세페이지(view.jsp)로 이동(삭제 여부 확인)
 --%>
 
 <%
 	request.setCharacterEncoding("utf-8");
 
 	String c_idx = request.getParameter("c_idx");
 	String b_idx = request.getParameter("b_idx");
 	
 	//DB 데이터 삭제 (c_idx 값 사용)
 	DAO.deleteComment(c_idx);
 	
 	
 	/* 페이지 이동처리 (view.jsp - b_idx, cPage 값 전달) 
 	b_idx : 파라미터 값으로 전달받은 값 사용
 	cPage : session에 있는 "cPage" 속성 값 사용
 	*/
 	String cPage = (String)session.getAttribute("cPage");
 	response.sendRedirect("view.jsp?b_idx=" + b_idx + "&cPage=" + cPage);
 	
 %>