<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
request.setAttribute("Pn", "2");
%>
<%@ include file="../_include/subHeader.jspf" %>

<h3 class="title1">WOORIKIRI <span>REGION</span></h3>

<ul class="subcate">
	<li ><a href="/<%=request.getContextPath()%>/Frontcontroller?type=region&cate=100200">프리미엄펜</a></li>
	<li ><a href="<%=request.getContextPath()%>/Frontcontroller?type=region&cate=100300">만년필</a></li>
	<li ><a href="<%=request.getContextPath()%>/Frontcontroller?type=region&cate=100400">유성볼펜</a></li>
	<li ><a href="<%=request.getContextPath()%>/Frontcontroller?type=region&cate=100500">중성펜</a></li>
</ul>

<div class="product_list">
	
	<ul>
		<li>
			<a href="/product/product_view.php?ccode=005005&idx=154">
			<div class="thum">
					<img src="https://dfrkkcv2hg1jc.cloudfront.net/data/product/2010000003_file6_15759536886i29q2a2ud.jpg" alt="" width="264" height="390"/>					<div class="ondiv">
						<div class="btn_plus"><div></div><div></div></div>
					</div>
				</div>
				<div class="info">
					<div class="cate1">서울</div>
					<div class="product_name">자바는 이렇게</div>
				</div>
			</a>
		</li>
		<li>
			<a href="/product/product_view.php?ccode=005005&idx=154">
			<div class="thum">
					<img src="https://dfrkkcv2hg1jc.cloudfront.net/data/product/2010000003_file6_15759536886i29q2a2ud.jpg" alt="" width="264" height="390"/>					<div class="ondiv">
						<div class="btn_plus"><div></div><div></div></div>
					</div>
				</div>
				<div class="info">
					<div class="cate1">전남</div>
					<div class="product_name">제주도 갑시다</div>
				</div>
			</a>
		</li>
		
	</ul>

</div>

<%@ include file="../_include/subFooter.jspf" %>
