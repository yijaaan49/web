<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>요청(redirect)</title>
</head>
<body>
	<form action="ex10_resp_redirect.jsp">
		<select name="site">
			<option value="naver">네이버</option>
			<option value="daum">다음</option>
			<option value="google">구글</option>			
		</select>
		<input type="submit" value="사이트 이동">
	</form>
</body>
</html>