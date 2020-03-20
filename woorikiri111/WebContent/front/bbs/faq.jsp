<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
request.setAttribute("Pn", "4");
request.setAttribute("Sn", "1");
%>
<%@ include file="../_include/subHeader.jspf" %>
<%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<script type="text/javascript">
$(function(){

	$(".faq_box").click(function(){
		
		$(this).toggleClass("on");
		$(this).find(".answer").slideToggle();

	})

})
</script>

<!-- <h3 class="title1">WOORIKIRI <span>FAQ</span></h3>
<div class="faq">

	<div class="faq_box">
		<div class="qustion">
			<a>아이디어를 제공하고 싶어요. 어떻게 하나요? <div class="arr"></div></a>
		</div>
		<div class="answer">
			<p>
				모나미는 언제나 고객분들의 아이디어와 의견을 기다리고 있습니다. 좋은 아이디어나 의견이 있으신 분은 이메일 help2@monami.com 로 문의해 주시기 바랍니다.
				<span class="dot">E-MAIL : help2@monami.com</span>
			</p>
		</div>
	</div>

</div> -->
<h3 class="title1">WOORIKIRI <span>FAQ</span></h3>
<div class="faq">
<c:forEach var = "vo" items="${faqList }" >

	<div class="faq_box">
<%-- 		<span>[${vo.category} ]</span> --%>
		<div class="qustion">
			<a>${vo.subject } <div class="arr"></div></a>
		</div>
		<div class="answer">
			<p>
				 ${vo.contents }
				<span class="dot">E-MAIL : help2@woorikiri.com</span>
			</p>
		</div>
	</div>

</c:forEach>
</div>

<%@ include file="../_include/subFooter.jspf" %>