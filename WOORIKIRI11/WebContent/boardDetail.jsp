<%@page import="com.woorikiri.route.board.dao.BoardDAO"%>
<%@page import="com.woorikiri.route.board.vo.BoardVO"%>
<%@page import="org.apache.ibatis.session.SqlSession"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%
	request.setCharacterEncoding("utf-8");
    String sno = request.getParameter("sno");
    String cPage = request.getParameter("cPage");
    BoardVO vo = BoardDAO.getOne(sno); 
    pageContext.setAttribute("vo", vo);
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>질문게시글 상세보기</title>
<style type="text/css">
	table { width: 700px; }
	tr {
	    text-align:center;
	    padding:4px 10px;
	    background-color: #F6F6F6;
	}
	th {
		width:120px;
	    text-align:center;
	    padding:4px 10px;
	    background-color: #B2CCFF;
	}
</style>
<script>

</script>
</head>
<body>
   <h2> 질문게시판 내용보기 </h2>
	<form method="post">
	<table>
	<tbody>
	<tr>
		<th>작성자</th>
		<td>${vo.wrId}</td>
	</tr>
	
	<tr>
		<th>제목</th>
		<td>${vo.wrSubject}</td>
	</tr>
	<tr>
		<th>날짜</th>
		<%-- <td>${vo.regdate.substring(0,10)}</td> --%>
		<td><fmt:formatDate value="${vo.regDt}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
	</tr>
	<tr>
		<th>내용</th>
		<td><pre>${vo.wrContent}</pre></td>
	</tr>
	<tr>
		<th>답변</th>
	<c:choose>
		<c:when test="${empty vo.answerContent}">
			<td><h2>등록된 답변이 없습니다.</h2></td>
		</c:when>
		<c:otherwise>
			<td><pre>${vo.answerContent}</pre></td>
		</c:otherwise>
	</c:choose>
	</tr>
	</tbody>
	<tfoot>
	<tr>
     <td colspan="2">
        <input type="button" value="목록" onclick="javascript:location.href='list.jsp?cPage=<%=cPage %>'" />
        <input type="button" value="수정" onclick="Frontcontroller?type=board&work=modify&" />
        <input type="button" value="삭제" onclick="Frontcontroller?type=board&work=del" />
        <input type="hidden" name="seq" value="" />
	    <input type="hidden" name="pwd" />
     </td>
	</tr>
	</tfoot>
	</table>
	</form>
</body>
</html>