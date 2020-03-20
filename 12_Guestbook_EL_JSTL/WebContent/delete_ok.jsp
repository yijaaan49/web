<%@page import="com.bc.mybatis.GuestbookVO"%>
<%@page import="com.bc.mybatis.DBService"%>
<%@page import="org.apache.ibatis.session.SqlSession"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 선택된 데이터 삭제 처리(session에 있는 guestbookVO)
	전달받은 pwd와 session VO객체의 pwd가 일치하면 삭제(메시지표시)
	불일치하면 이전페이지로 이동(암호불일치 메시지 표시)
 --%>
 
<%
	request.setCharacterEncoding("UTF-8");	

	SqlSession ss = DBService.getFactory().openSession(true);

	String pwd = request.getParameter("pwd");
	GuestbookVO vo = (GuestbookVO)session.getAttribute("guestbookVO");
	String pwd2 = vo.getPwd();
	String idx = vo.getIdx();
	System.out.println("pwd : " + pwd + ", pwd2 : " + pwd2 + ", idx : " + idx);
	
	int result = 0;
	try {
		if(pwd.equalsIgnoreCase(pwd2)) {
			result = ss.delete("delete", idx);
		} else {
%>
<script>
	alert("암호가 일치하지 않습니다.\n" + "이전 페이지로 이동합니다.");
	history.back();
</script>
<%
		}
%>
<script>
	//정상 처리 시
	alert("정상 삭제 되었습니다.\n" + "목록 페이지로 이동합니다.");
	location.href="list.jsp";
</script>		
<%		
	} catch(Exception e) {
		e.printStackTrace();
%>
<script>
	//예외 발생 시 분기 처리
	alert("[예외발생] 삭제처리 되지 않았습니다.\n" + "담당자(8282)에게 연락하세요.\n" + "이전 페이지로 이동합니다.");
	history.back();
</script>
<%
	} finally {
		ss.close();
	}
%>