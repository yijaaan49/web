<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 전달받은 번호(idx), 국어, 영어, 수학 값을 DB에 수정처리 --%>

<%!
	//JDBC 프로그램을 위한 변수 선언
	String driver = "oracle.jdbc.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String user = "mystudy";
	String password = "mystudypw";
%>
<%
	//한글처리
	request.setCharacterEncoding("UTF-8");

	int idx = Integer.parseInt(request.getParameter("idx"));
	int kor = Integer.parseInt(request.getParameter("kor"));
	int eng = Integer.parseInt(request.getParameter("eng"));
	int math = Integer.parseInt(request.getParameter("math"));

	Connection conn = null;
	PreparedStatement pstmt = null;
	
	String sql = "UPDATE STUDENT2 ";
	sql += " SET KOR=?, ENG=?, MATH=? ";
	sql += " WHERE IDX = ? ";

	int result = 0;
	try{
		//1. 드라이버 로딩
		Class.forName(driver);
		
		//2. DB연결
		conn = DriverManager.getConnection(url, user, password);
		
		//3. statement 객체 생성
		pstmt = conn.prepareStatement(sql);
		
		pstmt.setInt(1, kor);
		pstmt.setInt(2, eng);
		pstmt.setInt(3, math);
		pstmt.setInt(4, idx);
		
		//4. 쿼리 실행
		result = pstmt.executeUpdate(); 

		
	} catch(Exception e) {
		e.printStackTrace();
		
	} finally {
		try {
			if (pstmt != null) pstmt.close();
			if (conn != null) conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}		
	
	response.sendRedirect("stuList.jsp");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예외발생</title>
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
			<th width="100"><a href="stuForm.jsp">학생등록</a></th>
			<th width="100"><a href="stuAdd.jsp">성적입력</a></th>
			<th width="100"><a href="stuDel.jsp">데이터삭제</a></th>
		</tr>
		<tr>
			<td colspan="5" height="400">
				<center>
					<h2>[예외발생] 수정작업 실패!!!</h2>
					<h2>담당자(8282)에게 연락하세요.</h2>
				</center>
			</td>
		</tr>
	</table>
	
	
</body>
</html>