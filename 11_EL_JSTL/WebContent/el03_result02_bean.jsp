<%@page import="com.bc.vo.PersonVO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 전달받은 파라미터값을 자바빈(Bean) VO에 저장해서 사용 --%>
<%
	//한글처리
	request.setCharacterEncoding("UTF-8");
%>
	<%-- 빈(Bean) 객체 PersonVO 타입의 객체생성하고, 
		vo변수에 저장, page scope에 속성명 vo로 설정
		넘겨받은 파라미터 값 vo에 저장 --%>
	<jsp:useBean id="vo" class="com.bc.vo.PersonVO" />
	<jsp:setProperty property="*" name="vo"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자바빈(Bean)</title>
</head>
<body>
	<h2>결과보기(Bean 사용)</h2>
	<h3>표현식 사용 표현</h3>
	<ul>
		<li>이름 : <%=vo.getName() %></li>
		<li>나이 : <%=vo.getAge() %></li>
		<li>성별 : <%=vo.getGender() %></li>
		
		<li>취미 : <%=vo.getHobby() %></li>
		<li>취미(반복문) :
<%
		for (String h : vo.getHobby()) { %>
			<%=h %>&nbsp;&nbsp;
<%
		}
%>
		</li>
	</ul>
	<hr>
	
	<h3>EL 사용 표현</h3>
	<ol>
		<li>이름 : ${vo.getName() }</li>
		<li>이름 : ${vo.name }</li>
		<li>나이 : ${vo.getAge() }</li>
		<li>나이 : ${vo.age }</li>
		<li>성별 : ${vo.gender }</li>
		
		<li>취미 : ${vo.hobby }</li>
		<li>취미(반복문) :
			${vo.hobby[0] }
			${vo.hobby[1] }
			${vo.hobby[2] }
			${vo.hobby[3] }
		</li>
	</ol>
</body>
</html>




