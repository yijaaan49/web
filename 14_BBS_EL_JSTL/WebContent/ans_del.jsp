<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 전달받은 데이터 사용해서 삭제 처리
	- 입력된 암호와 DB 암호가 일치하면 삭제
	- 암호 불일치면 암호가 다르다는 메시지 표시하기
	>> 삭제 처리 페이지 호출(ans_del_ok.jsp)
--%>

<%
	request.setCharacterEncoding("UTF-8");

	String c_idx = request.getParameter("c_idx"); 
	String pwd = request.getParameter("pwd"); 
	String b_idx = request.getParameter("b_idx");
	
	//EL 사용하기 위해 scope에 속성 설정
	pageContext.setAttribute("c_idx", c_idx);
	pageContext.setAttribute("pwd", pwd);
	pageContext.setAttribute("b_idx", b_idx);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>댓글 삭제(암호 확인)</title>
<script>
	function ans_del(frm){
		var pwd1 = frm.pwd.value; //새로 입력한 데이터
		var pwd2 = "${pwd}"; //DB에 있던 데이터
		if(pwd1 != pwd2) {
			alert("비밀번호가 일치하지 않습니다. 다시 확인하세요.");
			frm.pwd.value="";
			frm.pwd.focus();
			return false;
		}
		var isDelete = confirm("정말 삭제하시겠습니까?");
		if(isDelete) {
			frm.submit(); //삭제처리 진행			
		} else {
			history.back(); //삭제 취소 이전페이지로 이동(상세페이지)
		}
	}
	
</script>
</head>
<body>
	<form action="ans_del_ok.jsp" method="post">
		비밀번호 : <input type="password" name="pwd">
		<input type="button" value="삭제" onclick="ans_del(this.form)">
		<input type="hidden" name="c_idx" value="${c_idx }">
		<input type="hidden" name="b_idx" value="${b_idx }">
	</form>
</body>
</html>