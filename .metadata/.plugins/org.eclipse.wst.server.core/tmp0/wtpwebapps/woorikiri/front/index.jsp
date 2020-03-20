<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인페이지</title>
<script>
	function register_go(frm) {
		frm.action = "<%=request.getContextPath()%>/Frontcontroller?type=formLogin&way=login";
		frm.submit();
	}
	
	function login_go(frm) {
		frm.action = "<%=request.getContextPath()%>/Frontcontroller?type=formLogin&way=login";
		frm.submit();
	}
	
	function logout_go(frm) {
		frm.action = "<%=request.getContextPath()%>/Frontcontroller?type=formLogin&way=logout";
		frm.submit();
	}
	
	function qna_go(frm) {
		frm.action = "<%=request.getContextPath()%>/Frontcontroller?type=board&work=list&bdId=qna";
		frm.submit();
	}
	
	function free_go(frm) {
		frm.action = "<%=request.getContextPath()%>/Frontcontroller?type=board&work=list&bdId=Free";
		frm.submit();
	}
	
	function notice_go(frm) {
		frm.action = "<%=request.getContextPath()%>/Frontcontroller?type=board&work=list&bdId=notice";
		frm.submit();
	}
	
</script>
</head>
<body>
	<h1>메인페이지</h1>
	<form method="post">
		<input type="button" value="모임리스트" onclick="">
		<input type="button" value="회원가입" onclick="register_go(this.form)">
		<c:choose>
			<c:when test="${empty memVO}">
				<input type="button" value="로그인" onclick="login_go(this.form)">				
			</c:when>
			<c:otherwise>
				<input type="button" value="로그아웃" onclick="logout_go(this.form)">
			</c:otherwise>
		</c:choose>
		<input type="button" value="질문게시판" onclick="qna_go(this.form)">
		<input type="button" value="자유게시판" onclick="free_go(this.form)">
		<input type="button" value="공지게시판" onclick="notice_go(this.form)">
	</form>
</body>
</html>