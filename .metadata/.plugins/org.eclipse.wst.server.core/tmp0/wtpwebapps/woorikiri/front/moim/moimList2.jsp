<%@page import="com.woorikiri.front.moim.FreeVO.BoardFileVO"%>
<%@page import="com.woorikiri.common.vo.PageVO"%>
<%@page import="com.woorikiri.front.moim.vo.MoimVO"%>
<%@page import="com.woorikiri.front.moim.dao.MoimDAO"%>
<%@page import="java.util.List"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
request.setAttribute("Pn", "1");
request.setAttribute("Sn", request.getParameter("cate"));
%>
<%@ include file="../_include/subHeader.jspf" %> 

 
<h3 class="title1">WOORIKIRI <span>MOIM</span></h3>

<ul class="museum_list">
	<c:forEach var="k" items="${list}">
	<li>
		<a href="<%=request.getContextPath()%>/Frontcontroller?type=moimView&moimSq=${k.moimSq}&cPage=${pvo.nowPage}">
		<div class="thumarea">
			<img src="https://dfrkkcv2hg1jc.cloudfront.net/data/board/museum/b_file_15106645483noim0ee5k.jpg" alt="" width="341" height="341"/>	<div class="ondiv">
				<div class="align">
					<div class="cate">Woorikiri</div>
					<div class="sbj">${k.moimTitle}</div>
					<div class="btn_plus"></div>
				</div>
			</div>
		</div>
		</a>
	</li>
	</c:forEach>
</ul>

<div class="paging">
	<c:choose>
		<c:when test="${pvo.beginPage < pvo.pagePerBlock}">
		<a class="page_prev"><img src="<%=FRONT_IMG_URL%>/common/page_prev.gif" alt="" /></a>
		</c:when>
	<c:otherwise>
		<a href="<%=request.getContextPath()%>/Frontcontroller?type=moim&cPage=${pvo.beginPage - pvo.pagePerBlock}">
		<img src="<%=FRONT_IMG_URL%>/common/page_prev.gif" alt="" />
		</a>
	</c:otherwise>	
	</c:choose>
	<c:forEach var="k" begin="${pvo.beginPage }" end="${pvo.endPage}" step="1">
		<c:if test="${k == pvo.nowPage}">
			<strong>${k}</strong>
		</c:if>
		<c:if test="${k != pvo.nowPage}">
			<a href="<%=request.getContextPath()%>/Frontcontroller?type=moim&cPage=${k }">${k }</a>
		</c:if>
	</c:forEach>
	<c:choose>
	<c:when test="${pvo.endPage >= pvo.totalPage}">
	<a  class="page_next">
	<img src="<%=FRONT_IMG_URL%>/common/page_next.gif" alt="" />
	</a>
	</c:when>
	<c:otherwise>
		<a href="<%=request.getContextPath()%>/Frontcontroller?type=moim&cPage=${pvo.beginPage + pvo.pagePerBlock}">
		<img src="<%=FRONT_IMG_URL%>/common/page_next.gif" alt="" />
		</a>
	</c:otherwise>
	</c:choose>
</div>

<div class="btn_top">
	<a><img src="<%=FRONT_IMG_URL%>/common/btn_top.gif" alt="페이지 상단으로" /></a>
</div>

<%@ include file="../_include/subFooter.jspf" %>