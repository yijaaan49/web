<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 전달받은 데이터를 사용해서 DB 데이터 수정 처리
	수정할 데이터 : 성명, 날짜(SYSDATE), 금액
	정상수정 후 : list.jsp 이동
	예외발생 시 : 현재페이지 보여주기
 --%>
<%
	//한글처리를 위한 문자처리방식 지정(특히 POST 방식에서는 필수)
	request.setCharacterEncoding("UTF-8");

	String sabun = request.getParameter("sabun");
	String name = request.getParameter("name");
	String pay = request.getParameter("pay");

	System.out.println("sabun : " + sabun);
	System.out.println("name : " + name);
	System.out.println("pay : " + pay);
	
	//JDBC 프로그램을 위한 변수 선언
	String driver = "oracle.jdbc.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String user = "mystudy";
	String password = "mystudypw";
	
	Connection conn = null;
	PreparedStatement pstmt = null;

	//사용할 쿼리 작성
	String sql = "";
	sql += "UPDATE GUEST ";
	sql += " SET NAME = ?, NALJA = SYSDATE, PAY = ? ";
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
		pstmt.setString(1, name);
		pstmt.setInt(2, Integer.parseInt(pay));
		pstmt.setInt(3, Integer.parseInt(sabun));
		
		//5. 쿼리실행 결과 처리
		result = pstmt.executeUpdate();
		System.out.println("result : " + result);
		
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
<title>사원 정보 수정 실패</title>
</head>
<body>
	<h1>사원 수정 실패</h1>
	<p>수정작업 처리를 하지 못했습니다.<br>
	[상세페이지로 이동] 클릭해서 다시 작업하세요.</p>
	<a href="detail.jsp?idx=<%=sabun %>">상세페이지로 이동</a>
	<a href="list.jsp">전체 목록 이동</a>
</body>
</html>