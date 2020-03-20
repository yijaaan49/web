<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%-- DB연결하고 GUEST 테이블에서 새로운 사번 구한 후 적용 --%>
<%!
	//JDBC 프로그램을 위한 변수 선언
	String driver = "oracle.jdbc.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String user = "mystudy";
	String password = "mystudypw";
%>
<%
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	String sql = "";
	sql = "SELECT NVL(MAX(SABUN),0)+1111 AS SABUN FROM GUEST";
	int sabun = 0;
	try{
		//1. 드라이버 로딩
		Class.forName(driver);
		
		//2. DB연결
		conn = DriverManager.getConnection(url, user, password);
		
		//3. statement 객체 생성
		pstmt = conn.prepareStatement(sql);
		
		//4. 쿼리 실행
		rs = pstmt.executeQuery();
		
		//5. 쿼리 실행 결과 처리
		if (rs.next()) {
			sabun = rs.getInt("SABUN");
		}
		
	} catch(Exception e) {
		out.print("<tr><td colspan='6'>");
		out.print("<h2>[예외발생] 담당자에게(8888) 연락바랍니다.</h2>");
		out.print("</td></tr>");
		//e.printStackTrace();
		
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
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사원등록</title>
</head>
<body>
	<h1>사원 정보 등록</h1>
	<form action="insert.jsp">
		<table>
			<tr>
				<th>사번</th>
				<td><input type="text" name="sabun" value="<%=sabun %>" readonly></td>
			</tr>
			<tr>
				<th>성명</th>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<th>금액</th>
				<td><input type="text" name="pay"></td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="사원등록">
					<input type="reset" value="초기화">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>