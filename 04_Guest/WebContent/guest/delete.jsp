<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 전달받은 데이터를 사용해서 DB 데이터 삭제 처리
	정상삭제 후 : list.jsp 이동
	예외발생 시 : 현재페이지 보여주기
 --%>
<%
String sabun = request.getParameter("idx");
//JDBC 프로그램을 위한 변수 선언
	String driver = "oracle.jdbc.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String user = "mystudy";
	String password = "mystudypw";
	
	Connection conn = null;
	PreparedStatement pstmt = null;

	//사용할 쿼리 작성
	String sql = "";
	sql += "DELETE FROM GUEST ";
	sql += " WHERE SABUN = ? ";
	
	int result = 0;
	try{
		//1. 드라이버 로딩
		Class.forName(driver);
		
		//2. DB연결
		conn = DriverManager.getConnection(url, user, password);
		
		//3. Statment 객체 생성
		pstmt = conn.prepareStatement(sql);
		
		//4. 바인드 변수에 데이터 설정
		pstmt.setInt(1, Integer.parseInt(sabun));
		
		//5. 쿼리실행 결과 처리
		result = pstmt.executeUpdate();
		
	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		try {
			if (pstmt != null) pstmt.close();
			if (conn != null) conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		if(result > 0) {
			response.sendRedirect("list.jsp");
		}
	}
		
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사원 정보 삭제 실패</title>
</head>
<body>
	<h1>사원 삭제 실패</h1>
	<p>삭제작업 처리를 하지 못했습니다.<br>
	[상세페이지로 이동] 클릭해서 다시 작업하세요.</p>
	<a href="detail.jsp?idx=<%=sabun %>">상세페이지로 이동</a>
	<a href="list.jsp">전체 목록 이동</a>
</body>
</html>