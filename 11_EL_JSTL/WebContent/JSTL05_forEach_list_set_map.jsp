<%@page import="com.bc.vo.PersonVO"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.HashSet"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL forEach</title>
</head>
<body>
	<h1>JSTL forEach : List, Set, Map</h1>
	<h2>Array 출력</h2>
	<p>출력대상 : {"a", "ab", "abc", "abcd"}</p>
<%
	String[] strs = {"a", "ab", "abc", "abcd"};
	pageContext.setAttribute("arr", strs);
%>
	<c:forEach var="str" items="${arr }">
		<p>${str }</p>
	</c:forEach>
	
	<h3>배열(Array) 일부 데이터만 사용(2,3번째 : 1,2번 인덱스)</h3>
	<ul>
	<c:forEach var="str" items="${arr }" begin="0" end="2">
		<li>${str }</li>
	</c:forEach>
	</ul>
	<hr><hr>
	
	<%-- =============== List 출력 =================== --%>
	<h1>List 출력</h1>
<%
	List<Integer> list = new ArrayList<>();
	list.add(123);
	list.add(45);
	list.add(678);
	list.add(90);
	pageContext.setAttribute("alist", list);
%>
	<ul>
	<c:forEach var="listItem" items="${alist }">
		<li>${listItem }</li>	
	</c:forEach>
	</ul>
	<hr><hr>
	
	<h1>Set 출력</h1>
<%
	Set<String> set = new HashSet<>();
	set.add("홍일동");
	set.add("홍이동");
	set.add("홍삼동");
	set.add("홍사동");
	pageContext.setAttribute("hset", set);
%>
	<ul>
	<c:forEach var="SetItem" items="${hset }">
		<li>${SetItem }</li>	
	</c:forEach>
	</ul>
	<hr><hr>
	
	<%-- ================ Map key-value 데이터 출력 ================= --%>
	<h1>Map 출력</h1>
<% 
	Map<String, String> map = new HashMap<>();
	map.put("k1", "a");
	map.put("k2", "ab");
	map.put("k3", "abc");
	map.put("k4", "abcd");
	pageContext.setAttribute("hmap", map);
%>
	<c:forEach var="map" items="${hmap }">
		<p>${map.key } - ${map.value }</p>	
	</c:forEach>
	<hr><hr>
	
	<%-- ================================================== --%>
	<h1>VO가 담긴 List 값 사용</h1>
<%
	List<PersonVO> listBean = new ArrayList<>();
	listBean.add(new PersonVO("홍일동", "27"));
	listBean.add(new PersonVO("홍이동", "30"));
	listBean.add(new PersonVO("홍삼동", "40"));
	listBean.add(new PersonVO("홍사동", "50"));
	
	pageContext.setAttribute("persons", listBean);
%>
	<c:forEach var="ps" items="${persons }">
		<p>이름 : ${ps.name }, 나이: ${ps.age }</p>
	</c:forEach>
	
</body>
</html>















