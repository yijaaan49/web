<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"  %>
<%
request.setAttribute("Pn", "6");
request.setAttribute("stx", request.getAttribute("stx"));
%>
<%@ include file="./_include/subHeader.jspf" %>

<h3 class="title1" style="margin-top:85px;">WOORIKI <span>DETAIL SEARCH</span></h3>

<div class="search">

	<div class="detail">
		<div class="clear">
			<div class="tit">
				<div class="kr">모임검색</div>
				<div class="en">Moim detail search</div>
			</div>
			<form name="search_frm" method="get">
			<input type="hidden" name="type" value="<%=request.getParameter("type")%>">
			<div class="formarea">
				<input type="text" placeholder="검색어를 입력해주세요." name="stx" value="<%=request.getParameter("stx")%>">
				<a href="javascript:document.search_frm.submit();">SEARCH</a>
			</div>
			</form>
		</div>
	</div>
	
	<!-- 리스트 공간 시작  -->
	<div class="total">총 <span>${fn:length(list)}</span>개의 모임이 검색되었습니다.</div>
	<div class="product_list">
	
		<ul>
		<c:forEach var="k" items="${list}">
		<li>
			<a href="<%=request.getContextPath()%>/Frontcontroller?type=moimView&sno=${k.moimSq}&cPage=${pvo.nowPage}&cate=${k.moimCa}">
				<div class="thum">
					<img src="http://localhost:8080/<%=request.getContextPath()%>/front/data/moim/${k.moimFile}" alt="" width="264" height="390"/><div class="ondiv">
						<div class="btn_plus"><div></div><div></div></div>
					</div>
				</div>
				<div class="info">
					<div class="cate1">${k.moimCa}</div>
					<div class="product_name">${k.moimTitle}</div>
				</div>
			</a>
		</li>
		</c:forEach>
	</ul>
	
	
	<c:if test="${pvo.totalPage>0}">
	<div class="paging">
	<c:choose>
		<c:when test="${pvo.beginPage < pvo.pagePerBlock}">
		<a class="page_prev"><img src="<%=FRONT_IMG_URL%>/common/page_prev.gif" alt="" /></a>
		</c:when>
	<c:otherwise>
		<a href="<%=request.getContextPath()%>/Frontcontroller?type=moimView&cate=${k.moimCa} %>&cPage=${pvo.beginPage - pvo.pagePerBlock}">
		<img src="<%=FRONT_IMG_URL%>/common/page_prev.gif" alt="" />
		</a>
	</c:otherwise>	
	</c:choose>
	<c:forEach var="k" begin="${pvo.beginPage }" end="${pvo.endPage}" step="1">
		<c:if test="${k == pvo.nowPage}">
			<strong>${k}</strong>
		</c:if>
		<c:if test="${k != pvo.nowPage}">
			<a href="<%=request.getContextPath()%>/Frontcontroller?type=moimView&cate=${k.moimCa} %>&cPage=${k }">${k }</a>
		</c:if>
	</c:forEach>
	<c:choose>
	<c:when test="${pvo.endPage >= pvo.totalPage}">
	<a  class="page_next">
	<img src="<%=FRONT_IMG_URL%>/common/page_next.gif" alt="" />
	</a>
	</c:when>
	<c:otherwise>
		<a href="<%=request.getContextPath()%>/Frontcontroller?type=moimView&cate=${k.moimCa} %>&cPage=${pvo.beginPage + pvo.pagePerBlock}">
		<img src="<%=FRONT_IMG_URL%>/common/page_next.gif" alt="" />
		</a>
	</c:otherwise>
	</c:choose>
	</div>
	</c:if>
	
	</div>
	<!-- 리스트 공간 끝  -->

</div>

<div class="paging">
	<a class="page_prev"><img src="<%=FRONT_IMG_URL%>/common/page_prev.gif" alt="" /></a> <strong>1</strong> <a href="/search.php?pg=2">2</a> <a href="/search.php?pg=3">3</a> <a href="/search.php?pg=4">4</a> <a href="/search.php?pg=5">5</a> <a href="/search.php?pg=6">6</a> <a href="/search.php?pg=7">7</a> <a href="/search.php?pg=8">8</a> <a href="/search.php?pg=9">9</a> <a href="/search.php?pg=10">10</a>  <a href="/search.php?pg=11"  class="page_next"><img src="/images/common/page_next.gif" alt="" /></a></div>
</div>


<div class="btn_top">
	<a><img src="<%=FRONT_IMG_URL%>/common/btn_top.gif" alt="페이지 상단으로" /></a>
</div>

<%@ include file="./_include/subFooter.jspf" %>
