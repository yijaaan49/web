<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>forEach varStatus</title>
</head>
<body>
	<%
		List<String> list = new ArrayList<>(); 
		list.add("홍길동-1");
		list.add("홍길동-2");
		list.add("홍길동-3");
		list.add("홍길동-4");
		
		pageContext.setAttribute("alist", list);
	%>
	
	<h2>forEach varStatus 속성</h2>
	<p>List 값 : 
		<c:forEach var="listItem" items="${alist }">
			${listItem }&nbsp;&nbsp;
		</c:forEach>
	</p>
	<hr><hr>
	
	<c:forEach var="listItem" items="${alist }"
			   begin="0" end="${alist.size() }" step="1"
			   varStatus="status">
		<p>
			var 값 : ${listItem }<br>
			current : ${status.current }<br> <%-- 현재 데이터 --%> 
			count : ${status.count }<br> <%-- 처리되는 데이터 건수 --%>
			index : ${status.index }<br> <%-- 데이터 인덱스 값 --%> 
			first : ${status.first }<br> <%-- 첫번째 데이터 여부(boolean) --%> 
			last : ${status.last }<br> <%-- 마지막 데이터 여부(boolean) --%>
			
			begin : ${status.begin }<br>
			end : ${status.end }<br>
			step : ${status.step }<br> 
		</p>		
		<hr>
	</c:forEach>
	
</body>
</html>











