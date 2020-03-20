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

<div class="m7">

	<form name="form" method="post">
	<input type="hidden" name="bdId" value="${bdId}">
	<input type="hidden" name="memNo" value="${USER.memSq}">
	<input type="hidden" name="wrNm" value="${USER.memNm}">
	<input type="hidden" name="wrId" value="${USER.memId}">
	<input type="hidden" name="wrNick" value="${USER.memNick}">
	<input type="hidden" name="wrPwd" value="${USER.memPw}">
	<div class="bbs_form">
	
		<table class="bbs_table" cellpadding=0 cellspacing=0>
		
			<tr>
				<th>제목</th>
				<td><input type="text" name="wrSubject"></td>
			</tr>
			<tr style='padding:10px 0px'>
				<th>닉네임</th> 
				<td>${USER.memNick}</td>
			</tr>
			<tr>
				<th>내용</th>
				<td>
				<textarea rows="10" cols="60" name="wrContent"></textarea></td>
			</tr>
		
		</table>
		
		<div class="btn_wrap">
			<a href="#" onclick="javascript:insert(${cPage})" class="create">입력</a>
			<a href="<%=request.getContextPath()%>/Frontcontroller?type=board&work=list&cPage=${cPage}&bdId=${bdId}" class="cancel">목록</a>
		</div>
	
	</div>
	</form>

</div>

<div class="btn_top">
	<a><img src="<%=FRONT_IMG_URL%>/common/btn_top.gif" alt="페이지 상단으로" /></a>
</div>

<script>
function insert(cPage){
	
	var f = document.form;
	f.action = "<%=request.getContextPath()%>/Frontcontroller?type=board&work=write&way=&cPage="+cPage;
	f.submit();
	
}
</script>

<%@ include file="../_include/subFooter.jspf" %>