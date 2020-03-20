<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<script>
	function send_go() {
		//alert("send_go() 시작");
		if(document.frm.name.value.trim() == "") {
			//trim() :  의미없는 스페이스를 삭제시켜줌(앞뒤에 들어간 공백)
			//--> 이름란에 스페이스만 적었을경우 삭제함 -> 결국 공백이 됨
			alert("이름을 입력하세요");	
			document.frm.name.focus();
			return false; //서버쪽으로 전송 안함
		} 
		var vForm = document.frm;
		if(vForm.id.value.trim().length < 1) {
			//trim().length == 0 : 입력이 되지 않았다!
			alert("아이디를 입력하세요.");
			vForm.id.focus();
			return false;
		}
		if(vForm.pwd.value.trim().length < 1) {
			alert("암호를 입력하세요.");
			vForm.pwd.focus();
			return false;
		}
		if(vForm.pwd2.value.trim().length < 1) {
			alert("확인암호를 입력하세요.");
			vForm.pwd2.focus();
			return false;
		}
		//두개의 암호가 일치하는가?
		if(vForm.pwd.value != vForm.pwd2.value) {
			alert("암호가 일치하지 않습니다.\n다시 입력하세요.");
			vForm.pwd.value = ""; //pwd 값 초기화
			vForm.pwd2.value = ""; //pwd2 값 초기화
			vForm.pwd.focus();
			return false;			
		}
		alert("모든 데이터 확인완료. 서버로 전달합니다.");
		vForm.action="ex07_resp.jsp";
		vForm.submit();
	}
</script>
</head>
<body>
	<h1>회원가입</h1>
	<form name="frm">
		<fieldset>
			<legend>회원가입</legend>
				<p>이름: <input type="text" name="name"></p>
				<p>아이디: <input type="text" name="id"></p>
				<p>패스워드: <input type="password" name="pwd"></p>
				<p>패스워드확인: <input type="password" name="pwd2"></p>
				<p>이메일: <input type="text" name="email"></p>
				<p>취미: 
					<input type="checkbox" name="hobby" value="운동"> 운동
					<input type="checkbox" name="hobby" value="게임"> 게임
					<input type="checkbox" name="hobby" value="영화감상"> 영화
					<input type="checkbox" name="hobby" value="독서"> 독서
				</p>
				<input type="button" value="회원가입" onclick="send_go()">
				<!-- type:submit이면 무조건 서버로 넘어감 -->
				<input type="reset" value="초기화">
		</fieldset>
	</form>
</body>
</html>