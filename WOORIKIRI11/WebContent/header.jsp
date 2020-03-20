<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
<meta name="keywords" content="woorikiri, 우리끼리, 모임, 행사, 번개, 이벤트">
<meta name="description" content="세상의 모든 모임 '우리끼리'">
<meta name="author" content="WOORIKIRI Inc. (yijaaan49@gmail.com)">
<meta name="viewport" content="width=1280">
<title>우리끼리 :: 모임문화 플랫폼</title>

<!--공통 CSS SCRIPT 시작-->
<link rel="stylesheet" href="./css/import.css">
<!--공통 CSS SCRIPT 끝-->

<script src="https://static.onoffmix.com/js/pc/dist/common/plugins/jquery-1.10.2.js"></script>
<script src="https://static.onoffmix.com/js/pc/dist/common/plugins/jquery-ui-1.10.4.custom.js"></script>
<script src="https://static.onoffmix.com/js/pc/dist/common/plugins/jquery.dotdotdot-1.5.0.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<!--[if lt IE 9]>
<script src="https://static.onoffmix.com/js/pc/dist/common/plugins/html5shiv.min.js"></script>
<script src="https://static.onoffmix.com/js/pc/dist/common/reponse.ie8.js"></script>
<![endif]-->

<!--메인 CSS SCRIPT 시작-->
<link rel="stylesheet" href="./css/main.css">
<!--메인 CSS SCRIPT 끝-->
</head>
<body class="onoffmix">

<!-- header start -->
<header id="header" class="header_wrap">
	
	<!--header top 시작-->
	<div class="header_top wide_max_width_area">

		<h1 class="woori_logo">
		<a href="/"><span class="text_logo">온오프믹스 홈</span><img src="" alt="WOORIKIRI"></a>
		</h1>

		<div class="user_area">
			<ul class="service_menu">
				<li class="list_item login"><a href="/account/login">로그인</a></li>
				<li class="list_item join"><a href="/account/join">회원가입</a></li>
				<li class="list_item service"><a href="/service">서비스안내</a></li>
				<li class="list_item customer"><a href="/cs/main">고객센터</a></li>
			</ul>

			<ul class="member_menu">
				<li class="list_item mypage" tabindex="0">
					<a href="/account/main">마이페이지</a>
					<div class="sub_menu">
						<ul class="sub_list mypage_list">
							<li><a href="/account/login?returnUrl=/account/edit" class="site_link edit">회원정보수정</a></li>
							<li><a href="/account/login?returnUrl=/account/pass" class="site_link pass">비밀번호변경</a></li>
							<li><a href="/account/login?returnUrl=/account/event" class="site_link event">신청내역</a></li>
							<li><a href="/account/login?returnUrl=/account/payment" class="site_link payment">결제내역</a></li>
							<li><a href="/account/login?returnUrl=/account/pin" class="site_link pin">찜내역</a></li>
						</ul>
					</div>
				</li>
				<li class="list_item eventopen"><a href="/event/add">모임개설</a></li>
				<li class="list_item manage"><a href="/account/login?returnUrl=/event/manage">모임관리</a></li>
				<li class="list_item notice"><a href="/account/login?returnUrl=/">알림</a></li>
			</ul>
		</div>

		<!--검색 area 시작-->
		<div class="search_area">
			<form class="search_form" action="/event/main" method="GET">
				<label for="searchInput">검색할 모임을 입력해주세요.</label>
				<input type="text" id="searchInput" class="search_input" name="s" value="" title="키워드로 모임을 검색하세요" data-event="205867">
									<span class="ofm_keyword_value"
					  data-event_no="205867" data-event_title="2020 IT 솔루션 박람회 Control Overflow" data-creative_name="PC_메인_검색창광고" data-creative_slot="1">IT 솔루션 박람회 Control Overflow →</span>
				</script>
				<input type="submit" class="btn_search" value="검색" title="검색">
			</form>
		</div>
		<!--검색 area 끝-->

	</div>
	<!--header top 끝-->

	<!--header bottom 시작-->
	<div class="header_bottom">

		<div class="wide_max_width_area">
			<div class="category_section">
				<div class="title_wrap">
					<button class="btn_category">카테고리</button>
				</div>
			</div>
		</div>

		<!--detail_category 시작-->
		<div class="detail_category">
		
			<div class="wide_max_width_area">
			<!-- 모임 시작 -->
				<section class="category_event">
					<h1>모임</h1>
					<ul class="list_col">
						<li class="list_item"><a href="/event/main/?c=085">교육</a></li>
						<li class="list_item"><a href="/event/main/?c=086">강연</a></li>
						<li class="list_item"><a href="/event/main/?c=087">세미나/컨퍼런스</a></li>
						<li class="list_item"><a href="/event/main/?c=088">문화/예술</a></li>
						<li class="list_item"><a href="/event/main/?c=089">방송/연예</a></li>
						<li class="list_item"><a href="/event/main/?c=090">취미활동</a></li>
						<li class="list_item"><a href="/event/main/?c=091">소모임/친목행사</a></li>
						<li class="list_item"><a href="/event/main/?c=092">공모전</a></li>
						<li class="list_item"><a href="/event/main/?c=093">전시/박람회</a></li>
						<li class="list_item"><a href="/event/main/?c=094">패션/뷰티</a></li>
						<li class="list_item"><a href="/event/main/?c=095">이벤트/파티</a></li>
						<li class="list_item"><a href="/event/main/?c=097">여행</a></li>
						<li class="list_item"><a href="/event/main/?c=023">후원금</a></li>
						<li class="list_item"><a href="/event/main/?c=096">기타</a></li>
					</ul>
				</section>
			<!-- 모임 끝 -->

			<!-- 지역 시간 -->
			<section class="category_area">
				<h1>지역</h1>
				<ul class="list_col">
					<li class="list_item"><a href="/event/main/?region=02">서울</a></li>
					<li class="list_item"><a href="/event/main/?region=032,031">인천/경기</a></li>
					<li class="list_item"><a href="/event/main/?region=042,043,041,044">대전/충청/세종</a></li>
					<li class="list_item"><a href="/event/main/?region=051,052,054">부산/울산/경남</a></li>
					<li class="list_item"><a href="/event/main/?region=062,063,061">광주/전라</a></li>
					<li class="list_item"><a href="/event/main/?region=053,055">대구/경북</a></li>
					<li class="list_item"><a href="/event/main/?region=033">강원</a></li>
					<li class="list_item"><a href="/event/main/?region=064">제주</a></li>
					<li class="list_item"><a href="/event/main/?region=00">기타지역</a></li>
				</ul>
			</section>
			</div>
			<!-- 지역 끝 -->

			<div class="category_action_area">
				<div class="wide_max_width_area">
					<a href="#" class="btn_all_event">전체 모임 보기<span>></span></a>
					<button class="btn_close">
						<span>카테고리 닫기</span>
						<img src="https://static.onoffmix.com/images/pc/svg/category_close_blue.svg" alt="닫기">
					</button>
				</div>
			</div>

		</div>
		<!--detail_category 끝-->

		<div class="wide_max_width_area">

			<div class="right_section">

				<!-- link section -->
				<div class="link_section">

				</div>
				<!-- link section -->

				<!-- lanking event 시작 -->
				<div class="event_ranking">

					<div class="visible_lanking">
						<span class="ranking_number"></span>
						<span class="event_title"></span>
					</div>

					<div class="detail_ranking_area">
						<h2>실시간 <span class="date_time">2020.1.13</span></h2>
					</div>

				</div>
				<!-- lanking event 끝 -->

			</div>

		</div>

	</div>
	<!--header bottom 끝-->

</header>
<!-- header end -->
    