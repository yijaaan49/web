<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>학생등록</title>
<style>
	table {
		border-collapse: collapse;
		width: 800px;
	}
	th, td {
		border: 1px solid black;
	}
	h1,h2 { text-align: center; }
	table table {
		width: 60%;
	}
</style>
</head>
<body>
	<table>
		<tr>
			<th width="250">
				<a href="main.jsp ">
					<img src="../imgs/bitcamp_logo.png" alt="로고">
				</a>
			</th>
			<th width="100"><a href="stuList.jsp">조회</a></th>
			<th width="100" bgcolor="orange"><a href="stuForm.jsp">학생등록</a></th>
			<th width="100"><a href="stuAdd.jsp">성적입력</a></th>
			<th width="100"><a href="stuDel.jsp">데이터삭제</a></th>
		</tr>
		<tr>
			<td colspan="5" height="400">
				<center>
					<h1>학생 정보 입력</h1>
					<form action="stuInsert.jsp">
						<table>
							<tr>
								<th>번호</th>
								<td><input type="text" name="idx"></td>
							</tr>
							<tr>
								<th>이름</th>
								<td><input type="text" name="name"></td>
							</tr>
							<tr>
								<td colspan="2">
									<input type="submit" value="입력">
									<input type="reset" value="취소">
								</td>
							</tr>
						</table>
					</form>
				</center>
			</td>
		</tr>
	</table>
	
	
</body>
</html>