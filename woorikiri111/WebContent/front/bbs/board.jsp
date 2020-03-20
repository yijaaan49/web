<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
request.setAttribute("Pn", "5");
request.setAttribute("Sn", request.getParameter("bdId"));
%>
<%@ include file="../_include/subHeader.jspf" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<h3 class="title1">
	WOORIKIRI <span><%=request.getParameter("bdId").toUpperCase() %></span>
</h3>

<div class="bbs_basic">

	<table cellpadding="0" cellspacing="0">
		<c:forEach var="k" items="${list}">
			<tr>
				<td class="date">
					<c:choose>
						<c:when test="${empty k.modDt}">
							<div class="day"><fmt:formatDate value="${k.regDt}" pattern="dd"/></div>
							<div class="ym"><fmt:formatDate value="${k.regDt}" pattern="yyyy.MM"/></div>
						</c:when>
						<c:otherwise>
							<div class="day"><fmt:formatDate value="${k.modDt}" pattern="dd"/></div>
							<div class="ym"><fmt:formatDate value="${k.modDt}" pattern="yyyy.MM"/></div>
						</c:otherwise>
					</c:choose>
					
				</td>
				<td class="sbj">
					<div>
						<a href="<%=request.getContextPath()%>/Frontcontroller?type=board&work=detail&sno=${k.sno}&cPage=${pvo.nowPage}&bdId=${bdId}">
							<div class="tit">${k.wrSubject}</div>
						</a>
					</div>
				</td>
				<td class="more">
					<a href="<%=request.getContextPath()%>/Frontcontroller?type=board&work=detail&sno=${k.sno}&cPage=${pvo.nowPage}&bdId=${bdId}" class="btn"><span>자세히보기</span><div></div></a>
				</td>
			</tr>
		</c:forEach>
	
	</table>
	
	<div class="btn_wrap">
		<a href="<%=request.getContextPath()%>/Frontcontroller?type=board&work=write&way=write&bdId=${bdId}&cPage=${pvo.nowPage}" class="write">글쓰기</a>
	</div>
	

</div>

<!-- 
<div class="paging">
	<a class="page_prev"><img src="<%=FRONT_IMG_URL%>/common/page_prev.gif" alt="" /></a> 
	<strong>1</strong> <a href="/board/board.php?bo_table=bodo&pg=2">2</a> 
	<a href="/board/board.php?bo_table=bodo&pg=3">3</a> 
	<a href="/board/board.php?bo_table=bodo&pg=4">4</a> 
	<a href="/board/board.php?bo_table=bodo&pg=5">5</a>  
	<a class="page_next"><img src="<%=FRONT_IMG_URL%>/common/page_next.gif" alt="" /></a>
</div>
-->

<div class="paging">
	<c:choose>
		<c:when test="${pvo.beginPage < pvo.pagePerBlock}">
			<a class="page_prev"><img src="<%=FRONT_IMG_URL%>/common/page_prev.gif" alt="" /></a>
		</c:when>
		<c:otherwise>
			<a href="<%=request.getContextPath()%>/Frontcontroller?type=board&work=list&bdId=${bdId}&cPage=${pvo.beginPage - pvo.pagePerBlock}">
				<img src="<%=FRONT_IMG_URL%>/common/page_prev.gif" alt="" />
			</a>
	  	</c:otherwise>
	</c:choose>
	
	<c:forEach var="k" begin="${pvo.beginPage }" end="${pvo.endPage}" step="1">
		<c:if test="${k == pvo.nowPage}">
			<strong>${k}</strong>
		</c:if>
		<c:if test="${k != pvo.nowPage}">
			<a href="<%=request.getContextPath()%>/Frontcontroller?type=board&work=list&bdId=${bdId}&cPage=${k }">${k }</a>
		</c:if>
	</c:forEach>
	
	<c:choose>
		<c:when test="${pvo.endPage >= pvo.totalPage}">
			<a class="page_next"><img src="<%=FRONT_IMG_URL%>/common/page_next.gif" alt="" /></a>
		</c:when>
		<c:otherwise>
			<a href="<%=request.getContextPath()%>/Frontcontroller?type=board&work=list&bdId=${bdId}&cPage=${pvo.beginPage + pvo.pagePerBlock}">
				<img src="<%=FRONT_IMG_URL%>/common/page_next.gif" alt="" />
			</a>
	  	</c:otherwise>
	</c:choose>
</div>

	<div class="btn_top">
		<a><img src="<%=FRONT_IMG_URL%>/common/btn_top.gif" alt="페이지 상단으로" /></a>
	</div>
	
	

<%@ include file="../_include/subFooter.jspf" %>