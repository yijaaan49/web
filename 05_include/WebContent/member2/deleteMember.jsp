<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 전달받은 ID 데이터 삭제하고 전체 데이터 보여주기  --%>
<%
	//전달받은 아이디(id) 추출
	String id = request.getParameter("id");

	//JDBC 프로그램을 위한 변수 선언
	String driver = "oracle.jdbc.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String user = "mystudy";
	String password = "mystudypw";
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	
	int result = 0;
	try{
		//1. 드라이버 로딩
		Class.forName(driver);
		
		//2. DB연결
		conn = DriverManager.getConnection(url, user, password);
				
		//사용할 쿼리 작성
		String sql = "DELETE ";
		sql += " FROM MEMBER2 ";	 
		sql += " WHERE ID = ? ";	 
		
		//3. statement 객체 생성
		pstmt = conn.prepareStatement(sql);
		
		pstmt.setString(1, id);
		
		//4. 쿼리 실행
		result = pstmt.executeUpdate();
		
		if(result > 0) {
			response.sendRedirect("selectAll.jsp");
		} 
			
	} catch(Exception e) {
		e.printStackTrace();
		response.sendRedirect("error.jsp");
	} finally {
		try {
			if (pstmt != null) pstmt.close();
			if (conn != null) conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
%>
