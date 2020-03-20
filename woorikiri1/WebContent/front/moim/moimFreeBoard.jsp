<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script>
function sendData() {
	for(var i = 0; i < document.forms[0].elements.length; i++){
		if(document.forms[0].elements[i].value == ""){
			if(i == 3)continue;
			alert(document.forms[0].elements[i].name + "를 입력해주세요");
			document.forms[0].elements[i].focus();
			return;
		}
	}
	document.forms[0].submit();
}
function sendController(frm){
	frm.action = "Frontcontroller?type=board&work=create"
	frm.submit();
}
</script>
<body>
	<form method="post" enctype="multipart/form-data">
	<table border>
		<tr>
			<th>제목</th>
			<td><input type="text" name="title"></td>
		</tr>
		<tr>
			<th>작성자</th>
			<td><input type="text" name="writer"></td>
		</tr>
		<tr>
			<th>내용</th>
			<td><textarea rows="10" cols="60" name="content"></textarea></td>
		</tr>
		<tr>
			<th>첨부파일</th>
			<td><input type="file" name="bfFile"></td>
		</tr>
		<tr>
			<th>비밀번호</th>
			<td align="left"><input type="password" name="pwd"></td>
		</tr>
		<tr>
			<td colspan="2">
			<input type="button" value="입력" onclick="sendData(); sendController(this.form)" /> 
			<input type="reset" value="취소" />
			</td>
		</tr>
	</table>
	</form>
</body>
</html>