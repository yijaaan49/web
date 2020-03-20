<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>응답페이지</title>
</head>
<body>
	<h2>JSTL02_resp.jsp</h2>
	<h3>이름 : ${param.name }</h3>
	<h3>나이 : ${param.age }</h3>
	<hr>
	
	<h3>전달받은 파라미터 값을 param 객체 사용하지 않고 EL을 사용하려면 scope 상의 속성에 저장 후 사용	</h3>
	
<%
	String name = request.getParameter("name");
	pageContext.setAttribute("attr_name", name);
%>
	<h3>이름(\${name }) : ${name }</h3>
	<h3>이름(\${attr_name }) : ${attr_name }</h3>
	<hr>
</body>
</html>