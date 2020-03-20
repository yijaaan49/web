<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 아이디, 암호 사용해서 로그인처리 --%>
<%
	//1. 파라미터 값 추출
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	
	//2. 전달받은 값 (id, pwd) 사용 로그인 처리
	//DB에 있는 데이터를 확인해서 처리(정석)
	//id: hong, pwd: 1234 이면 로그인 성공, 그 외 실패 처리
	boolean loginResult = false;
	if("hong".equals(id) && "1234".equals(pwd)) {
		loginResult = true;
	}
	
	//3. 로그인 성공/실패 여부에 따라 session 값 설정
	if(loginResult) {//로그인 성공
		session.setAttribute("login_chk", "로그인 성공");
		session.setAttribute("id", id);
	} else {//로그인 실패
		session.setAttribute("login_chk", "로그인 실패");
	}
	System.out.println("login_chk : " + session.getAttribute("login_chk"));
	
	//4. 페이지 전환(로그인 페이지로 이동)
	response.sendRedirect("ex02_login.jsp");
%>