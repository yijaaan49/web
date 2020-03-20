<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP id, pw</title>
<script>
	function send_go(form){
		alert("전달받은 객체 : " + form);
		form.action = "ex04_resp.jsp";
		form.submit();
	}
</script>
</head>
<body>
	<%-- JSP 요청페이지에서 응답페이지로 이동 --%>
	<h2>(요청)ID, PW 값 서버 측에 전달</h2>
	<%--<form action="ex04_resp.jsp">--%>
	<form>	
		<p>ID : <input type="text" name="id" ></p>
		<p>PW : <input type="text" name="pw" ></p>
		
		<input type="submit" value="전송(다른페이지로 이동)" onclick="send_go(this.form)">
										<%-- this.form으로 현재 form 전달해서 JS로 다른 작업 할 수 있음--%>
	</form>
</body>
</html>