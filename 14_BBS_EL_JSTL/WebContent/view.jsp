<%@page import="com.bc.mybatis.CommVO"%>
<%@page import="java.util.List"%>
<%@page import="com.bc.mybatis.DAO"%>
<%@page import="com.bc.mybatis.BBSVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- 전달받은 파라미터 값 b_idx, cPage 
	1. 게시글 조회수 1 증가
	2. 게시글(b_idx) 데이터 조회 후 화면 표시
	3. 게시글(b_idx)에 딸린 댓글이 있으면 화면 표시
--%>
<%
	//파라미터 값 추출
	String b_idx = request.getParameter("b_idx");
	String cPage = request.getParameter("cPage");
	
	//1. 게시글 조회수 1 증가
	DAO.updateHit(Integer.parseInt(b_idx)); //id="hit"
	
	//2. 게시글(b_idx) 데이터 조회 후 화면 표시(HTML 작성)
	BBSVO bvo = DAO.selectOne(Integer.parseInt(b_idx)); //mapper id: one
	
	//3. 게시글(b_idx)에 딸린 댓글이 있으면 화면 표시
	List<CommVO> c_list = DAO.getCommList(Integer.parseInt(b_idx)); //id="commList"
	
	//EL, JSTL 사용을 위한 속성 등록 ---------------------------
	session.setAttribute("bvo", bvo);
	pageContext.setAttribute("c_list", c_list);
	System.out.println("c_list : " + c_list);
	
	session.setAttribute("cPage", cPage); //작업 중 페이지로 이동 시 사용
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 상세</title>
<style>
	#bbs table {
		width: 580px;
		margin-left: 10px;
		border-collapse: collapse;
		font-size: 14px;
	}
	#bbs table caption {
		font-size: 20px;
		font-weight: bold;
		margin-bottom: 10px;
	}
	#bbs table th {
		text-align: center;
		border: 1px solid black;
		padding: 4px 10px;
		width: 30%;
		background-color: lightsteelblue;
	}
	#bbs table td {
		text-align: left;
		border: 1px solid black;
		padding: 4px 10px;
	}
</style>
<script>
	function modify_go() {
		document.frm.action = "modify.jsp";
		document.frm.submit();
	}	
	function delete_go() {
		document.frm.action = "delete.jsp";
		document.frm.submit();
	}
	function list_go() {
		document.frm.action = "list.jsp";
		document.frm.submit();
	}
</script>
</head>
<body>

<div id="bbs">
<%--게시글 내용 표시 --%>
<form method="post" name="frm">
	<table>
		<caption>상세보기</caption>
		<tbody>
			<tr>
				<th>제목</th>
				<td>${bvo.subject }</td>
			</tr>
			<tr>
				<th>첨부파일</th>
				<td>
					<c:if test="${empty bvo.file_name }">
						첨부파일 없음
					</c:if>
					<c:if test="${not empty bvo.file_name }">
						<a href="download.jsp?f_name=${bvo.file_name }">${bvo.file_name }</a>
					</c:if>
				</td>
			</tr>
			<tr>
				<th>작성자</th>
				<td>${bvo.writer }</td>
			</tr>
			<tr>
				<th>내용</th>
				<td>
					<pre>${bvo.content }</pre>
				</td>
			</tr>
		</tbody>
		<tfoot>
			<tr>
				<td colspan="2">
					<input type="button" value="수정(작성실습)"
						onclick="modify_go()">
					<input type="button" value="삭제(작성실습)"
						onclick="delete_go()">
					<input type="button" value="목록"
						onclick="list_go()">
					<input type="hidden" name="cPage"
						value="${cPage }">
				</td>
			</tr>
		</tfoot>
	</table>
</form>
<hr>

<%--댓글 입력 폼 --%>
<form method="post" action="ans_write_ok.jsp">
	<p>이름 : <input type="text" name="writer"></p>
	<p>내용 : <textarea name="content" rows="4" cols="55"></textarea></p>
	<p>비밀번호 : <input type="password" name="pwd"></p>
	<input type="submit" value="댓글저장">
	
	<input type="hidden" name="b_idx" value="${bvo.b_idx }">
	<input type="hidden" name="cPage" value="${cPage }">
</form>

<%--댓글 출력(동적 태그 작성) --%>
<hr>
댓글들
<hr>

<c:forEach var="commVO" items="${c_list }">
<div class="comment">
	<form action="ans_del.jsp" method="post">
		<p>이름 : ${commVO.writer }</p>
		<p>날짜 : ${commVO.write_date }</p>
		<p>내용 : ${commVO.content }</p>
		<input type="submit" value="댓글삭제">
		
		<input type="hidden" name="c_idx" value="${commVO.c_idx }">
		<input type="hidden" name="pwd" value="${commVO.pwd }">
		
		<%--삭제처리 후 게시글 상세페이지로 이동시 사용 --%>
		<input type="hidden" name="b_idx" value="${commVO.b_idx }">
	</form>
</div>
</c:forEach>


</div>
</body>
</html>