<%@page import="com.woorikiri.front.moim.dao.MoimDAO"%>
<%@page import="com.woorikiri.front.moim.vo.MoimVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<c:set var="Sn" value="${MoimVO.moimCa}"></c:set>
<%
request.setAttribute("Pn", "1");
request.setAttribute("Sn", pageContext.getAttribute("Sn"));
%>
<%@ include file="../_include/subHeader.jspf" %> 

<h3 class="title1">WOORIKIRI <span>MOIM</span></h3>

<div class="m7">

	<table cellpadding="0" cellspacing="0" class="bbs_view2">
	<colgroup>
		<cols width="130px">
		<cols width="">
	</colgroup>
	<tr>
		<th colspan="2" style='text-align:Center;'>
			<div class="sbj">${MoimVO.moimTitle}</div>
		</th>
	</tr>
	<tr>
		<th>접수기간</th>
		<td>${MoimVO.moimSdate} ~ ${MoimVO.moimEdate}</td>
	</tr>
	<tr>
		<th>모임일자</th>
		<td>${MoimVO.moimDate}&nbsp; ${MoimVO.moimHour}시 ${MoimVO.moimMin}분</td>
	</tr>
	<tr>
		<th>모임연령</th>
		<td>
			<c:choose>
				<c:when test="${MoimVO.moimAgeOption=='99'}">
				무관
				</c:when>
				<c:otherwise>
				${MoimVO.moimAgeOption}대
				</c:otherwise>
			</c:choose>
		</td>
	</tr>
	<tr>
		<th>모임성별</th>
		<td>
			<c:choose>
				<c:when test="${MoimVO.moimGender=='N'}">
				무관
				</c:when>
				<c:when test="${MoimVO.moimGender=='M'}">
					남성 
				</c:when>
				<c:otherwise>
					여성
				</c:otherwise>
			</c:choose>
		</td>
	</tr>
	<tr>
		<th>모임장소</th>
		<td>
			${MoimVO.moimAddress}
			${MoimVO.moimAddressSub}
		</td>
	</tr>
	<tr>
		<th>모임소개</th>
		<td>${MoimVO.moimIntro}</td>
	</tr>
	<tr>
		<th>모임이미지</th>
		<td><img src="http://localhost:8080/<%=request.getContextPath()%>/front/data/moim/${BoardFileVO.bfFile}"></td>
	</tr>
	</table>

	<div class="btn_wrap">
		
		<a href="#" onclick="javascript:in_moim()" class="insert">참여하기</a>
		<a href="<%=request.getContextPath()%>/Frontcontroller?type=moim&cate=${MoimVO.moimCa}" class="list">목록</a>
		
	</div>

</div>


<script>
	function in_moim(){
		alert("완성되면 신청해 보세요");
	}
</script>

<%@ include file="../_include/subFooter.jspf" %>