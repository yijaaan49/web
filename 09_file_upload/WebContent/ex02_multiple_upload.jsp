<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>파일 업로드</title>
</head>
<body>

	<form method="POST" enctype="multipart/form-data" action="ex02_result.jsp">
		<p>올린사람 : <input type="text" name="name"></p>
		<p>파일제목 : <input type="text" name="title"></p>
		<p>파일 : <input type="file" name="f_name1"></p>
		<p>파일 : <input type="file" name="f_name2"></p>
		<p>파일 : <input type="file" name="f_name3"></p>
		<input type="submit" value="파일업로드">
	</form>
</body>
</html>