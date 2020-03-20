<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
request.setAttribute("Pn", "5");
request.setAttribute("Sn", request.getParameter("bdId"));
%>
<%@ include file="../_include/subHeader.jspf" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"  %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<h3 class="title1">
	WOORIKIRI <span><%=request.getParameter("bdId").toUpperCase() %></span>
</h3>

<table cellpadding="0" cellspacing="0" class="bbs_view">

<tr>
	<th>
		<div class="sbj">${vo.wrSubject}</div>
		<div class="date">
			<span class="tit">작성자</span> ${vo.wrNick}
			<span class="line">I</span>
			<span class="tit">날짜</span>
				<c:choose>
					<c:when test="${empty vo.modDt }">
						<fmt:formatDate value="${vo.regDt}" pattern="yyyy-MM-dd HH:mm:ss"/>
					</c:when>
					<c:otherwise>
						<fmt:formatDate value="${vo.modDt}" pattern="yyyy-MM-dd HH:mm:ss"/>
					</c:otherwise>
				</c:choose>
		</div>
		<c:choose>
			<c:when test=""></c:when>
			<c:otherwise>
				<div class="file">
					<span class="tit">조회수 </span> ${vo.hit}
				</div>
			</c:otherwise>
		</c:choose>
		
	</th>
</tr>	
<tr>
	<td class="viewcon">
		${vo.wrContent}
	</td>
</tr>
</table>


<%--댓글 입력 폼 --%>
<c:if test="${USER.memNick != null }">
<div class="comment">

	<div class="comment_write">
	<form class="formarea" name="frmComment" method="post" action="<%=request.getContextPath()%>/Frontcontroller?type=board&work=comt">
	<table>
		<tr>
			<td>작성자 : ${USER.memNick }</td>
		</tr>
		<tr>
			<td><textarea name="memo"></textarea></td>
		</tr>
		<tr>
			<td><input type="button" onclick="javascript:comment_write()" class="btnarea" style='cursor:pointer;' value="댓글저장"></td>
		</tr>
	</table>
	
	<input type="hidden" name="bdId" value="${bdId}">
	<input type="hidden" name="sno" value="${vo.sno}">
	<input type="hidden" name="cPage" value="${cPage}">
	<input type="hidden" name="memId" value="${USER.memId }">
	<input type="hidden" name="memNm" value="${USER.memNm }">
	<input type="hidden" name="memNick" value="${USER.memNick }">
	<input type="hidden" name="memPw" value="${USER.memPw }">
	<input type="hidden" name="groupThread" value="${vo.groupThread }">
	<input type="hidden" name="groupNo" value="${vo.groupNo }">
	</form>	
	
	</div>
	
</div>
</c:if>

<%--댓글 출력(동적 태그 작성) --%>
<hr>
<hr>

<c:if test="${fn:length(comtList)>0}">
<div class="comment">
	<div class="comment_write">
	<form action="" class="formarea" method="post">
	<table>
	<colgroup>
	<col width="95%">
	<col width="5%">
	</colgroup>
	<c:forEach var="vo" items="${comtList }">
	<tr>
		<td colspan="2">이름 : ${vo.writerNick } | 날짜 : ${vo.regDt }</td>
	</tr>
	<tr>
		<td>${vo.memo }</td>
		<td>
		<c:set var="memNick" value="${USER.memNick }"/>
		<c:set var="writerNick" value="${vo.writerNick }"/>
		<c:if test="${writerNick == memNick }">
			<input type="submit" value="댓글삭제" onclick="location.href='<%=request.getContextPath()%>/Frontcontroller?type=board&work=comtDel&sno=${vo.sno }'">
		</c:if>
		</td>
	</tr>
	</c:forEach>
	</table>
	</form>
	</div>
</div>
</c:if>
	
<div class="view_btns">
	<a href="<%=request.getContextPath()%>/Frontcontroller?type=board&work=list&cPage=${cPage}&bdId=${vo.bdId }">LIST</a>
	<a href="<%=request.getContextPath()%>/Frontcontroller?type=board&work=modify&way=modify" class="modify">수정</a>
	<a href="<%=request.getContextPath()%>/Frontcontroller?type=board&work=del&way=del" class="del">삭제</a>
	<div class="view_page">
		<a href="board.php?bo_table=bodo&&idx=1"><img src="<%=FRONT_IMG_URL%>/page/view_page_prev.gif" alt="" /></a>	
		<a href="board.php?bo_table=bodo&&idx=1"><img src="<%=FRONT_IMG_URL%>/page/view_page_next.gif" alt="" /></a>
	</div>
</div>


<div class="btn_top">
	<a><img src="<%=FRONT_IMG_URL%>/common/btn_top.gif" alt="페이지 상단으로" /></a>
</div>
	

<script>
function comment_write(){
	
	var f = document.frmComment;
	
	if(!f.memo.value){
		
		alert("댓글 내용을 입력하세요");
		f.memo.focus();
		
		return false;
		
	}
	
	f.submit();
	
	
	
}
</script>
<%@ include file="../_include/subFooter.jspf" %>
