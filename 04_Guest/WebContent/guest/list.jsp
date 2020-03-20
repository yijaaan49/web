<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%-- JDBC 프로그램으로 DB데이터 가져와서 화면 출력 --%>
<%
	//JDBC 프로그램을 위한 변수 선언
	String driver = "oracle.jdbc.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String user = "mystudy";
	String password = "mystudypw";
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	//사용할 쿼리 작성
	String sql = "";
	sql += "SELECT ROWNUM AS RN, SABUN, NAME, NALJA, PAY ";
	sql += " FROM GUEST ";
	sql += " ORDER BY SABUN ";
	
	String sqlCnt = "select COUNT(*) AS CNT FROM GUEST";
	int cnt = 0; //전체 인원수
			 
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>전체목록</title>
</head>
<body>
	<h1>사원목록</h1>
	<table border>
		<thead>
			<tr>
				<th>번호</th>
				<th>사번</th>
				<th>성명</th>
				<th>날짜</th>
				<th>금액</th>
				<th>상세보기</th>
			</tr>
		</thead>
		<tbody>
		<!-- 
			<tr>
				<td>1</td>
				<td>1111</td>
				<td>user1</td>
				<td>2019/12/16</td>
				<td>1000</td>
				<td>선택</td>
			</tr>
		 -->
			<%
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
				while(rs.next()) {
			%>
				<tr>
					<td><%=rs.getInt("RN") %></td>
					<td><%=rs.getInt("SABUN") %></td>
					<td><%=rs.getString("NAME") %></td>
					<td><%=rs.getDate("NALJA") %></td>
					<td><%=rs.getInt("PAY") %></td>
					<td>
						<a href="detail.jsp?idx=<%=rs.getInt("SABUN") %>">선택</a>
					</td>
				</tr>
			<%
				}
				//전체 인원수 조회
				rs = pstmt.executeQuery(sqlCnt);
				if (rs.next()) { //COUNT(*)이라 데이터 무조건 있으므로 while문 안씀
					cnt = rs.getInt("CNT");
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
		</tbody>
	</table>
	<p>총 인원 : <%=cnt %>명</p>
	<p><a href="addForm.jsp">사원등록</a></p>
</body>
</html>