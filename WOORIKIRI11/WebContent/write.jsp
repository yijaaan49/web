<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>질문 작성</title>
<style type="text/css">
tr {
	    text-align:center;
	    padding:4px 10px;
	    background-color: #F6F6F6;
	}
	
th {
		width:120px;
	    text-align:center;
	    padding:4px 10px;
	    background-color: #B2CCFF;
	}
td { text-align: left; }
</style>
<script>
	function sendData(frm) {
		frm.action = "frontcontroller?Type=write";
		frm.submit();
	}
</script>
</head>
<body>
<form method="post" enctype="multipart/form-data">
	<h1>질문 작성</h1>
		<table width="700">
		<tbody>
			<tr>
				<th>작성자</th>
				<td align="left"><input type="text" name="wrId"></td>
			</tr>
			<tr>
				<th>제목</th>
				<td align="left"> <input type="text" name="wrSubject"></td>
			</tr>
			<tr>
				<th>내용</th>
				<td align="left"><textarea rows="10" cols="60" name="wrContent"></textarea>
				</td>
			<tr>
				<th>비밀번호</th>
				<td align="left"><input type="password" name="wrPwd"></td>
			</tr>
			<tr>
				<td colspan="2">
				<input type="button" value="입력" onclick="sendData(this.form)" /> 
				<input type="reset" value="취소" />
				</td>
			</tr>
            </tbody>
		</table>
	</form>
</body>
</html>