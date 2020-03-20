<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%-- 전달받은 데이터를 사용해서 DB에 입력처리
	정상입력 : list.jsp 페이지로 이동
	예외발생 : 현재 페이지 보여주기
 --%>
 
<%!
	//JDBC 프로그램을 위한 변수 선언
	String driver = "oracle.jdbc.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String user = "mystudy";
	String password = "mystudypw";
%>
<%
	String sabun = request.getParameter("sabun");
	String name = request.getParameter("name");
	String pay = request.getParameter("pay");
	
	System.out.println("sabun : " + sabun);
	System.out.println("name : " + name);
	System.out.println("pay : " + pay);

	Connection conn = null;
	PreparedStatement pstmt = null;
	
	String sql = "";
	sql = "INSERT INTO GUEST ";
	sql += " VALUES (?, ?, SYSDATE, ?) ";

	int result = 0;
	try{
		//1. 드라이버 로딩
		Class.forName(driver);
		
		//2. DB연결
		conn = DriverManager.getConnection(url, user, password);
		
		//3. statement 객체 생성
		pstmt = conn.prepareStatement(sql);
		
		pstmt.setString(1, sabun);
		pstmt.setString(2, name);
		pstmt.setString(3, pay);
		
		//4. 쿼리 실행
		result = pstmt.executeUpdate(); 

		if(name != null && pay != null) { //데이터가 입력된 경우
			response.sendRedirect("list.jsp");		
		}
		
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


%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사원 등록 실패</title>
</head>
<body>
	<h1>사원 등록 실패</h1>
	<p>입력작업 처리를 하지 못했습니다.<br>
	[입력페이지로 이동] 클릭해서 다시 작업하세요.</p>
	<a href="addForm.jsp">입력페이지로 이동</a>
</body>
</html>