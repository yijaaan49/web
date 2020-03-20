<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
request.setAttribute("Pn", "3");
request.setAttribute("Sn", "1");
%>
<%@ include file="../_include/subHeader.jspf" %>

<h3 class="title1">WOORIKIRI <span>PLACE ZONE</span></h3>

<ul class="museum_list">

	<li>
		<a href="#"><div class="thumarea">
			<img src="https://dfrkkcv2hg1jc.cloudfront.net/data/board/museum/b_file_15106645483noim0ee5k.jpg" alt="" width="341" height="341"/>				<div class="ondiv">
				<div class="align">
					<div class="cate">WOORIKIRI MOIM</div>
					<div class="sbj">테스트1</div>
					<div class="btn_plus"></div>
				</div>
			</div>
		</div>
		</a>
	</li>
	
	<li>
		<a href="#"><div class="thumarea">
			<img src="https://dfrkkcv2hg1jc.cloudfront.net/data/board/museum/b_file_15106645483noim0ee5k.jpg" alt="" width="341" height="341"/>				<div class="ondiv">
				<div class="align">
					<div class="cate">WOORIKIRI MOIM</div>
					<div class="sbj">테스트2</div>
					<div class="btn_plus"></div>
				</div>
			</div>
		</div>
		</a>
	</li>
	
	<li>
		<a href="#"><div class="thumarea">
			<img src="https://dfrkkcv2hg1jc.cloudfront.net/data/board/museum/b_file_15106645483noim0ee5k.jpg" alt="" width="341" height="341"/>				<div class="ondiv">
				<div class="align">
					<div class="cate">WOORIKIRI MOIM</div>
					<div class="sbj">테스트3</div>
					<div class="btn_plus"></div>
				</div>
			</div>
		</div>
		</a>
	</li>
	
	<li>
		<a href="#"><div class="thumarea">
			<img src="https://dfrkkcv2hg1jc.cloudfront.net/data/board/museum/b_file_15106645483noim0ee5k.jpg" alt="" width="341" height="341"/>				<div class="ondiv">
				<div class="align">
					<div class="cate">WOORIKIRI MOIM</div>
					<div class="sbj">테스트4</div>
					<div class="btn_plus"></div>
				</div>
			</div>
		</div>
		</a>
	</li>
	
	<li>
		<a href="#"><div class="thumarea">
			<img src="https://dfrkkcv2hg1jc.cloudfront.net/data/board/museum/b_file_15106645483noim0ee5k.jpg" alt="" width="341" height="341"/>				<div class="ondiv">
				<div class="align">
					<div class="cate">WOORIKIRI MOIM</div>
					<div class="sbj">테스트5</div>
					<div class="btn_plus"></div>
				</div>
			</div>
		</div>
		</a>
	</li>

</ul>

<div class="paging">
	<a class="page_prev"><img src="<%=FRONT_IMG_URL%>/common/page_prev.gif" alt="" /></a> <strong>1</strong> <a  class="page_next"><img src="<%=FRONT_IMG_URL%>/common/page_next.gif" alt="" /></a>
</div>

<div class="btn_top">
	<a><img src="<%=FRONT_IMG_URL%>/common/btn_top.gif" alt="페이지 상단으로" /></a>
</div>

<%@ include file="../_include/subFooter.jspf" %>