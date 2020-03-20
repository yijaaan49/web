<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	//한글처리를 위한 설정
	request.setCharacterEncoding("UTF-8");
	
	//전달받은 파라미터 값 추출
	String name = request.getParameter("name");
	String age = request.getParameter("age");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>파라미터 처리</title>
</head>
<body>
	<h1>[여기는 ex01_includee2_param.jsp]</h1>
	<h2>이름 : <%=name %></h2>
	<h2>나이 : <%=age %></h2>
</body>
</html>