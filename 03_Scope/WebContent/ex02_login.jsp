<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
</head>
<body>
<%
	//로그인 성공 여부 확인
	String login_chk = (String)session.getAttribute("login_chk");
	System.out.println("1. login_chk: " + login_chk);
	if(login_chk != null) {
		if(login_chk.equals("로그인 성공")) {
			System.out.println("2. login_chk: " + login_chk);
			String id = (String)session.getAttribute("id");
			out.print("<h2>로그인 성공!!!!! "+ id +"님 환영합니다. </h2>");
		} else { //로그인 실패할 경우
			System.out.println(">>(로그인페이지) 로그인 실패");
			session.invalidate();
			response.sendRedirect("ex02_loginMessage.jsp");
		}
	} else {
		System.out.println("3. login_chk: " + login_chk);
%>
	<form action="ex02_loginProc.jsp">
		<p>아이디 : <input type="text" name="id"></p>
		<p>암호 : <input type="password" name="pwd"></p>
		<input type="submit" value="로그인">
	</form>
<%
	} //맨처음엔 null(else)이니까 요 form을 띄우자
%>	
</body>
</html>