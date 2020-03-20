<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>파라미터 값 처리</title>
</head>
<body>
<%
	String name = request.getParameter("name");
	String age = request.getParameter("age");
%>
	<h2>일반적인 파라미터 처리 방법</h2>
	이름 : <%=name %><br>
	나이 : <%=age %><br>
	<hr>
	
	<h2>속성(attribute)을 이용(request)</h2>
<%
	request.setAttribute("attr_name", name + "attr");
	request.setAttribute("attr_age", age + "attr");
%>
	이름 : <%=request.getAttribute("attr_name") %>
	나이 : <%=request.getAttribute("attr_age") %>
	
	<%--===========================================
	액션태그 : <jsp:useBean></jsp:useBean>
	자바빈(bean)을 이용해서 파라미터 값을 표현
	자바빈(bean)은 데이터를 저장할 목적으로 JSP에서 제공하는 저장소
	<useBean 액션태그의 역할 및 사용법>
	1. VO 객체 생성(자바 클래스)
	2. 자바빈 생성(useBean 액션태그 사용)
		id : 사용할 변수명
		class : 실제 클래스의 위치(패키지 + 클래스명)
		scope : page(default), request, session, application
		
	--%>
	<jsp:useBean id="person" class="com.mystudy.InfoVO" scope="request"/>
	<!-- com.mystudy.InfoVO person = new com.mystudy.InfoVO();
	 		이렇게 객체 만들듯이..!
	 -->
	<%--
	<jsp:setProperty property="name" name="person"/>
	<jsp:setProperty property="age" name="person"/>
	 --%>
	<!-- 하나씩 뽑아서 값을 넣을 때 setProperty 요방식 -->
	
	<jsp:setProperty property="*" name="person"/>
	<!-- 한꺼번에 값을 넣을 때 setProperty 요방식 : 파라미터명 == 필드명-->
<%
	 	System.out.println("person : " + person);
%>
	<h2>자바빈 객체의 getter 이용해서 값 표시(표현식)</h2>
	<h2>이름 : <%=person.getName() %></h2>
	<h2>나이 : <%=person.getAge() %></h2>
	<hr>
	
	<h2>자바빈 객체의 getter 이용해서 값 표시(액션태그: getProperty)</h2>
	<h2>이름 : <jsp:getProperty property="name" name="person"/></h2>
	<h2>나이 : <jsp:getProperty property="age" name="person"/></h2> <!-- 잘안씀(너무길어,복잡) -->
	<hr>
	
	<h2>자바빈 객체의 getter 이용해서 값 표시(Expression Language : EL)</h2>
	<h2>이름(EL) : ${person.name }</h2>
	<h2>나이(EL) : ${person.age }</h2>
</body>
</html>





