<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//파라미터 값 추출
	String name = request.getParameter("name");
	String age = request.getParameter("age");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>2페이지</title>
</head>
<body>
	<h1>2번째 페이지 #2</h1>
	전달받은 파라미터 값 <br>
	<h2>이름 : <%=name %></h2>
	<h2>나이 : <%=age %></h2>
</body>
</html>