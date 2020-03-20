<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>약관</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script>
	$(function(){
		$("#checkall").click(function(){
			if($("#checkall").prop("checked")) {
				$("input[type=checkbox]").prop("checked", true);
			} else {
				$("input[type=checkbox]").prop("checked", false);
			}
		});
	});
	
	function register_form_go(frm) {
		if(!$("input:checked[Name='chk1']").is(":checked")) {
			alert("약관에 동의하셔야만 회원가입을 하실 수 있습니다.");
		} else if (!$("input:checked[Name='chk2']").is(":checked")) {
			alert("약관에 동의하셔야만 회원가입을 하실 수 있습니다.");
		} else {
			frm.action = "registerForm.jsp";
			frm.submit();
		}
	}
</script>
</head>
<body>
	<h1>약관동의</h1>
	<table border="1">
    <tr>
        <td><input type="checkbox" name="chk1"/></td>
        <td>약관약관약관약관약관약관약관약관약관약관약관약관약관</td>
    </tr>
    <tr>
        <td><input type="checkbox" name="chk2"/></td>
        <td>약관약관약관약관약관약관약관약관약관약관약관약관약관</td>
    </tr>
    <tr>
        <td><input type="checkbox" id="checkall"/></td>
        <td>전체동의</td>
    </tr>
</table>
	<form method="post">
		<input type="button" value="회원가입" onclick="register_form_go(this.form)">
	</form>
</body>
</html>