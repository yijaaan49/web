<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//서블릿에서 사용햇던 방법 그대로 사용
	//전달받은 파라미터 값 추출
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>(응답)전달 받은 값 출력</title>
</head>
<body>
	<h1>(응답)당신이 입력한 값 맞나요?</h1>
	<h2>ID: <%=id %></h2>
	<h2>PW: <%=pw %></h2>
</body>
</html>