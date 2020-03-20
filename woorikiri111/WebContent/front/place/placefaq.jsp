<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
request.setAttribute("Pn", "3");
request.setAttribute("Sn", "2");
%>
<%@ include file="../_include/subHeader.jspf" %>
<script type="text/javascript">
$(function(){

	$(".faq_box").click(function(){
		
		$(this).toggleClass("on");
		$(this).find(".answer").slideToggle();

	})

})
</script>


<h3 class="title1">WOORIKIRI <span>PLACE FAQ</span></h3>

<div class="faq">

	<!-- 반복되어야 하는 부분 시작 -->
	<c:forEach var="vo" items="${pFaqList }">
	<%--  <c:if test="${vo.category == 1000 }">--%>
	<div class="faq_box">
		<div class="qustion">
			<a>${vo.subject } <div class="arr"></div></a>
		</div>
		<div class="answer">
			<p>
				${vo.contents }
				<span class="dot">E-MAIL : help@woorikiri.com</span>
			</p>
		</div>
	</div>
	<%-- </c:if> --%>
	</c:forEach>
	<!-- 반복되어야 하는 부분 끝 -->
	

</div>




<%@ include file="../_include/subFooter.jspf" %>