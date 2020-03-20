<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 전달받은 번호(idx), 성명(name) 값을 DB에 입력처리 --%>

<%!
	//JDBC 프로그램을 위한 변수 선언
	String driver = "oracle.jdbc.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String user = "mystudy";
	String password = "mystudypw";
%>
<%
	int idx = Integer.parseInt(request.getParameter("idx"));
	String name = request.getParameter("name");

	Connection conn = null;
	PreparedStatement pstmt = null;
	
	String sql = "";
	sql = "INSERT INTO STUDENT2 ";
	sql += " VALUES (?, ?, 0, 0, 0) ";

	int result = 0;
	try{
		//1. 드라이버 로딩
		Class.forName(driver);
		
		//2. DB연결
		conn = DriverManager.getConnection(url, user, password);
		
		//3. statement 객체 생성
		pstmt = conn.prepareStatement(sql);
		
		pstmt.setInt(1, idx);
		pstmt.setString(2, name);
		
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
	
	if(result > 0) {
		response.sendRedirect("stuList.jsp");
	} else {
		response.sendRedirect("stuForm.jsp");
	}


%>