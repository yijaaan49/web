<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인페이지</title>
<script>
	function register_go(frm) {
		frm.action = "register.jsp";
		frm.submit();
	}
	
	function qna_go(frm) {
		frm.action = "Frontcontroller?type=board&work=list&bdId=qna";
		frm.submit();
	}
</script>
</head>
<body>
	<h1>메인페이지</h1>
	<form method="post">
		<input type="button" value="모임리스트" onclick="">
		<input type="button" value="회원가입" onclick="register_go(this.form)">
		<input type="button" value="로그인" onclick="">
		<input type="button" value="질문게시판" onclick="qna_go(this.form)">
	</form>
</body>
</html>