<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자유게시판 리스트</title>
</head>
<body>
	<h2>BBS 리스트</h2>
	<table>
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>닉네임</th>
			<th>작성일</th>
			<th>조회수</th>
		</tr>
		<c:choose>
			<c:when test="${empty list}">
				<tr>
					<td colspan="5"><h2>등록된 게시글이 없습니다.</h2></td>
				</tr>
			</c:when>
			<c:otherwise>
				<c:forEach var="k" items="${list}">
					<tr>
						<td>${k.rNum}</td>
						<td align="left">
							<a href="Frontcontroller?type=board&moimSq=${k.moimSq}&cPage=${pvo.nowPage}">${k.moimTitle}</a></td>
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
</body>
</html>