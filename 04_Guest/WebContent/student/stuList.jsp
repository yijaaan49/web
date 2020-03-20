<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%-- DB데이터 전체 조회 후 화면 출력 --%>
<%
	//JDBC 프로그램을 위한 변수 선언
	String driver = "oracle.jdbc.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String user = "mystudy";
	String password = "mystudypw";
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;

	try{
		//1. 드라이버 로딩
		Class.forName(driver);
		
		//2. DB연결
		conn = DriverManager.getConnection(url, user, password);
				
		//사용할 쿼리 작성
		String sql = "";
		sql += "SELECT IDX, NAME, KOR, ENG, MATH ";
		sql += " FROM STUDENT2 ";
		sql += " ORDER BY IDX ";	 
		
		//3. statement 객체 생성
		pstmt = conn.prepareStatement(sql);
		
		//4. 쿼리 실행
		rs = pstmt.executeQuery();

%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>조회</title>
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
			<th width="100" bgcolor="orange"><a href="stuList.jsp">조회</a></th>
			<th width="100"><a href="stuForm.jsp">학생등록</a></th>
			<th width="100"><a href="stuAdd.jsp">성적입력</a></th>
			<th width="100"><a href="stuDel.jsp">데이터삭제</a></th>
		</tr>
		<tr>
			<td colspan="5" height="400">
				<center>
					<h1>학생 성적 목록</h1>
					<table>
						<thead>
							<tr>
								<th>번호</th>
								<th>이름</th>
								<th>국어</th>
								<th>영어</th>
								<th>수학</th>
							</tr>
						</thead>
						<tbody>
<%
						//5. 쿼리 실행 결과 처리
						while(rs.next()) {
%>
							<tr>
								<td><%=rs.getInt(1) %></td>
								<td><%=rs.getString(2) %></td>
								<td><%=rs.getInt(3) %></td>
								<td><%=rs.getInt(4) %></td>
								<td><%=rs.getInt(5) %></td>
							</tr>
<%
						}
%>
						</tbody>
					</table>
				</center>
			</td>
		</tr>
	</table>
	
	
</body>
</html>

<%
			
	} catch(Exception e) {
		e.printStackTrace();
	} finally {
		try {
			if (rs != null) rs.close();
			if (pstmt != null) pstmt.close();
			if (conn != null) conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
%>