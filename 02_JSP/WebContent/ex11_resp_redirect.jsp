<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리다이렉트 처리</title>
</head>
<body>
<%
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	System.out.println(">>id : " + id + ", pwd : " + pwd);
%>
	<h2>[ ex11_resp_redirect.jsp 응답페이지 ]</h2>
	<hr>
	<h2>아이디 : <%=id %></h2>
	<h2>암호 : <%=pwd %></h2>
	
<%
	//재요청 처리(리다이렉트)
	response.sendRedirect("ex11_resp_redirect2.jsp");
%>
</body>
</html>