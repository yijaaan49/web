<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
request.setAttribute("Pn", "2");
request.setAttribute("Sn", request.getParameter("zone"));
%>
<%@ include file="../_include/subHeader.jspf" %>

<h3 class="title1">WOORIKIRI <span>REGION</span></h3>



<div class="product_list">
	
	<ul>
		<c:forEach var="k" items="${list}">
		<li>
			<a href="<%=request.getContextPath()%>/Frontcontroller?type=regionView&sno=${k.moimSq}&cPage=${pvo.nowPage}&zone=<%=request.getParameter("zone")%>">
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
		<a href="<%=request.getContextPath()%>/Frontcontroller?type=region&zone=<%=request.getParameter("zone") %>&cPage=${pvo.beginPage - pvo.pagePerBlock}">
		<img src="<%=FRONT_IMG_URL%>/common/page_prev.gif" alt="" />
		</a>
	</c:otherwise>	
	</c:choose>
	<c:forEach var="k" begin="${pvo.beginPage }" end="${pvo.endPage}" step="1">
		<c:if test="${k == pvo.nowPage}">
			<strong>${k}</strong>
		</c:if>
		<c:if test="${k != pvo.nowPage}">
			<a href="<%=request.getContextPath()%>/Frontcontroller?type=region&zone=<%=request.getParameter("zone") %>&cPage=${k }">${k }</a>
		</c:if>
	</c:forEach>
	<c:choose>
	<c:when test="${pvo.endPage >= pvo.totalPage}">
	<a  class="page_next">
	<img src="<%=FRONT_IMG_URL%>/common/page_next.gif" alt="" />
	</a>
	</c:when>
	<c:otherwise>
		<a href="<%=request.getContextPath()%>/Frontcontroller?type=region&zone=<%=request.getParameter("zone") %>&cPage=${pvo.beginPage + pvo.pagePerBlock}">
		<img src="<%=FRONT_IMG_URL%>/common/page_next.gif" alt="" />
		</a>
	</c:otherwise>
	</c:choose>
	</div>
	</c:if>
	

</div>

<%@ include file="../_include/subFooter.jspf" %>
