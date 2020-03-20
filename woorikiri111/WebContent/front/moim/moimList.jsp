<%@page import="com.woorikiri.front.moim.vo.MoimVO"%>
<%@page import="com.woorikiri.front.moim.dao.MoimDAO"%>
<%@page import="com.woorikiri.common.vo.PageVO"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="org.apache.ibatis.session.SqlSession"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
table { width: 700px; }
tr {
	text-align: center;
	padding: 4px 10px;
	background-color: #F6F6F6;
}

th {
	text-align: center;
	padding: 4px 10px;
	background-color: #B2CCFF;
}
/* paging */
table tfoot ol.paging {
	list-style: none;
}

table tfoot ol.paging li {
	float: left;
	margin-right: 8px;
}

table tfoot ol.paging li a {
	display: block;
	padding: 3px 7px;
	border: 1px solid #00B3DC;
	color: #2f313e;
	font-weight: bold;
	text-decoration: none;
}

table tfoot ol.paging li a:hover {
	background: #00B3DC;
	color: white;
	font-weight: bold;
}

.disable {
	padding: 3px 7px;
	border: 1px solid silver;
	color: silver;
}

.now {
	padding: 3px 7px;
	border: 1px solid #ff4aa5;
	background: #ff4aa5;
	color: white;
	font-weight: bold;
}
</style>
</head>
<body>
	<h2>BBS 리스트</h2>
	<table>
	
		<tr>
			<th>번호</th>
			<th>모임명</th>
			<th>모임장</th>
			<th>모임개설일</th>
			<th>조회수</th>
		</tr>
		<c:choose>
			<c:when test="${empty list}">
				<tr>
					<td colspan="5"><h2>등록된 자료가 없습니다.</h2></td>
				</tr>
			</c:when>
			<c:otherwise>
				<c:forEach var="k" items="${list}">
					<tr>
						<td>${k.rNum}</td>
						<td align="left">
							<a href="<%=request.getContextPath()%>/Frontcontroller?type=moimView&moimSq=${k.moimSq}&cPage=${pvo.nowPage}">${k.moimTitle}</a></td>
						<td>${k.moimMemId}</td>
						<%-- <td>${k.regdate.substring(0,10)}</td> --%>
						<td><fmt:formatDate value="${k.moimCreateDt}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
						<td>${k.moimHit}</td>
					</tr>
				</c:forEach>
			</c:otherwise>
		</c:choose>
		<tfoot>
			<tr>
				<td colspan="4">
					<ol class="paging">
						<c:choose>
							<c:when test="${pvo.beginPage < pvo.pagePerBlock}">
								<li class="disable">이전으로</li>
							</c:when>
							<c:otherwise>
								<li><a
									href="list.jsp?cPage=${pvo.beginPage - pvo.pagePerBlock}">이전으로</a></li>>
						  	</c:otherwise>
						</c:choose>

						<c:forEach var="k" begin="${pvo.beginPage }" end="${pvo.endPage}" step="1">
							<c:if test="${k == pvo.nowPage}">
								<li class="now">${k}</li>
							</c:if>
							<c:if test="${k != pvo.nowPage}">
								<li><a href="list.jsp?cPage=${k }">${k }</a></li>
							</c:if>
						</c:forEach>
						
						<c:choose>
							<c:when test="${pvo.endPage >= pvo.totalPage}">
								<li class="disable">다음으로</li>
							</c:when>
							<c:otherwise>
								<li><a href="list.jsp?cPage=${pvo.beginPage + pvo.pagePerBlock}">다음으로</a></li>
						  	</c:otherwise>
						</c:choose>
					</ol>
				</td>
				<td><input type="button" value="모임개설" onclick="javascript:location.href='moimBoard.jsp'" /> </td>
			</tr>
		</tfoot>
	</table>
</body>
</html>