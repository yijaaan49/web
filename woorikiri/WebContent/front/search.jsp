<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
request.setAttribute("Pn", "6");
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
			<form name="search_frm">
			<div class="formarea">
				<input type="text" placeholder="검색어를 입력해주세요." name="key_word" value="">
				<a href="javascript:document.search_frm.submit();">SEARCH</a>
			</div>
			</form>
		</div>
	</div>
	
	<!-- 리스트 공간 시작  -->
	<div class="total">총 <span>126</span>개의 모임이 검색되었습니다.</div>
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
						<div class="cate1">교육</div>
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
						<div class="cate1">여행</div>
						<div class="product_name">제주도 갑시다</div>
					</div>
				</a>
			</li>
			
		</ul>
	
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
