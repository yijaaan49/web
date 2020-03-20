<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장바구니 품목 계산하기</title>
</head>
<body>

	<h2>계산</h2>

	<p>[ <%=session.getAttribute("username") %> ] 님 계산할 목록</p>

	<h2>계산할 품목</h2>
	<%-- ul, li 사용해서 장바구니 목록 출력 --%>
	<%-- 없으면 : 계산할 품목이 없습니다. 출력 --%>

	<ul>
		<% 
		ArrayList<String> list = (ArrayList<String>)session.getAttribute("product_list");
		if (list == null) { 
			out.print("계산할 품목이 없습니다.");	
		} else {
			for(String prodlist : list) {
				out.print("<li>"+ prodlist + "</li>");
			}
		}
		%>
	</ul>

	<p><a href="ex03_logout.jsp">로그아웃</a></p>
</body>
</html>