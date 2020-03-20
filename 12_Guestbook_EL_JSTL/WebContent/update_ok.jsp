<%@page import="org.apache.ibatis.session.SqlSession"%>
<%@page import="com.bc.mybatis.DBService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- (실습) 전달받은 데이터를 사용해서 DB 데이터 수정 
	수정성공 : 목록페이지로 이동(list.jsp)
	수정실패 : 메시지 표시 후 이전화면(수정페이지) 이동	
--%>
<%
	request.setCharacterEncoding("UTF-8");
%>
	<jsp:useBean id="guestbookVO" class="com.bc.mybatis.GuestbookVO"/>
	<jsp:setProperty property="*" name="guestbookVO"/>
<%
	SqlSession ss = DBService.getFactory().openSession(true);

	int result = 0;
	try {
		result = ss.update("update", guestbookVO);
%>
<script>
	//정상 처리 시
	alert("정상 수정 되었습니다.\n" + "목록 페이지로 이동합니다.");
	location.href="list.jsp";
</script>		
<%		
	} catch(Exception e) {
		e.printStackTrace();
%>
<script>
	//예외 발생 시 분기 처리
	alert("[예외발생] 수정처리 되지 않았습니다.\n" + "담당자(8282)에게 연락하세요.\n" + "이전 페이지로 이동합니다.");
	history.back();
</script>
<%
	} finally {
		ss.close();
	}
%>