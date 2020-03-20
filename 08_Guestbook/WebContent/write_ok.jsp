<%@page import="com.bc.mybatis.GuestbookVO"%>
<%@page import="java.util.List"%>
<%@page import="com.bc.mybatis.DBService"%>
<%@page import="org.apache.ibatis.session.SqlSession"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 전달받은 데이터를 DB에 저장
	입력성공 시 : 목록 페이지로 이동(list.jsp)
	입력실패(예외): 메시지 표시 후 이전화면(입력페이지) 이동 
--%>
<%
	//(실습) 순서에 따라 입력(insert) 작업 처리
	//0. 한글처리(POST 방식으로 데이터 받았을 때)
	request.setCharacterEncoding("UTF-8");

	//1. 파라미터 값 추출해서 VO객체에 저장
%>
	<jsp:useBean id="guestbookVO" class="com.bc.mybatis.GuestbookVO"/>
	<jsp:setProperty property="*" name="guestbookVO"/>
<%

	//2. SqlSession 객체 생성(DB연동작업용) - 자동커밋 형태
	SqlSession ss = DBService.getFactory().openSession(true);
	
	int result = 0;
	try {
	//3. 매퍼(mapper)의 SQL의 "insert" ID 사용해서 DB에 입력(insert)
		result = ss.insert("insert", guestbookVO);
%>
<script>
	//정상 처리 시
	alert("정상 입력 되었습니다.\n" + "목록 페이지로 이동합니다.");
	location.href="list.jsp";
</script>		
<%		
	} catch (Exception e) {
		e.printStackTrace();
%>
<script>
	//예외 발생 시 분기 처리
	alert("[예외발생] 입력처리 되지 않았습니다.\n" + "담당자(8282)에게 연락하세요.\n" + "이전 페이지로 이동합니다.");
	history.back();
</script>
<%
	} finally {
	//4. 작업 후 분기 처리 및 close처리
		ss.close(); //사용자원 반납
	}
	response.sendRedirect("list.jsp");
%>	
