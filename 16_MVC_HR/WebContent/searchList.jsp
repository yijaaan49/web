<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>동적 검색 결과</title>
</head>
<body>
	<h1>동적 검색(${title }) 결과(fullnameList.jsp)</h1>
	<ul>
		<li>사번, 이름, 성, 직무코드, 부서코드</li>
		<c:forEach var="vo" items="${s_list }">
			<li>
				${vo.employee_id}, ${vo.first_name}, ${vo.last_name}, ${vo.job_id}, ${vo.department_id}
			</li>
		</c:forEach>
		
	</ul>
</body>
</html>