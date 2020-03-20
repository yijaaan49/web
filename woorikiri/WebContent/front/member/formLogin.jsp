<%@ page trimDirectiveWhitespaces="true" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../_common.jsp" %>
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
<link rel="stylesheet" href="<%=FRONT_CSS_URL%>/import.css">
<!--공통 CSS SCRIPT 끝-->

<script src="<%=FRONT_JS_URL%>/jquery/jquery-1.10.2.js"></script>
<script src="<%=FRONT_JS_URL%>/jquery/jquery-ui-1.10.4.custom.js"></script>
<script src="<%=FRONT_JS_URL%>/jquery/jquery.dotdotdot-1.5.0.js"></script>

<!--메인 CSS SCRIPT 시작-->
<link rel="stylesheet" href="<%=FRONT_CSS_URL%>/layout/login.css">
<!--메인 CSS SCRIPT 끝-->
</head>
<body class="onoffmix">

	<!-- header start -->
	<header id="header" class="header_wrap">
		
		<!--header top 시작-->
		<div class="header_top wide_max_width_area">

			<h1 class="woori_logo">
			<a href="/"><span class="text_logo">우리끼리 홈</span></a>
			</h1>

			<div class="user_area">
				<ul class="service_menu">
					<li class="list_item login"><a href="<%=request.getContextPath()%>/Frontcontroller?type=formLogin">로그인</a></li>
					<li class="list_item join"><a href="<%=request.getContextPath()%>/Frontcontroller?type=memReg">회원가입</a></li>
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
	
	
	<main id="content" class="login">

		<!-- wrapping 시작 -->
		<div class="content_wrapping max_width_area">

			<div class="top_area">
				<h1 class="ofm_logo">
					<a href="#"><img src="#" alt="우리끼리"></a>
				</h1>
			</div>

			<div class="main_area">
            <!-- 메인콘텐츠 시작 -->

			<!-- 메인콘텐츠 시작 -->
            <section class="main_content">
                <h1 class="hidden">로그인</h1>
                <!-- 회원 로그인 시작 -->
                <article class="tab member active">
                    <div class="tab_content">
                        <div class="sso_login">
                            <h2 class="sub_title">Enjoy With</h2>
                        </div>
    
                        <form action="<%=request.getContextPath()%>/Frontcontroller?type=" method="post" accept-charset="utf-8" class="login_access_form">
                            <input type="hidden" name="returnUrl" value="/">
                            <input type="hidden" name="login_type" value="user">
                            <div class="login_form">
                                <div class="input_area">                                    
                                    <input type="text" class="email" name="userId" placeholder="아이디를 입력해 주세요()" value="">
                                    <input type="password" class="password" name="userPw" placeholder="비밀번호를 입력해 주세요.">
                                </div>
                                <ul class="check_area">
                                    <li>
                                        <!-- 기본이 체크된 상태
                                        <input type="checkbox" id="remember" name="PERSISTENT" checked>
                                        <label for="remember">로그인 상태 유지</label>
                                        -->
                                    </li>
                                    <li class="join"><a href="https://onoffmix.com/account/join">회원가입</a></li>
                                    <li class="find"><a href="https://onoffmix.com/account/find">아이디 / 비밀번호찾기</a></li>
                                </ul>
                                <p class="error_msg">
                                                                    </p>
                                <input type="submit" class="btn_submit" value="로그인">
                                
                                <div class="help">
                                    <a href="#" target="_blank" title="새 창 열림">로그인이 잘 안되세요?</a>
                                </div>
                            </div>
                        </form>
                    </div>
                </article>
                <!-- 회원 로그인 끝 -->
            </section>
            <!-- 메인콘텐츠 끝 -->
			</div>

		</div><!-- wrapping 끝 -->


	</main>
	

	<script src="<%=FRONT_JS_URL%>/service/jquery.cookie.js"></script>
	<script src="<%=FRONT_JS_URL%>/jquery/jquery.browser.js"></script>
	<script src="<%=FRONT_JS_URL%>/common/purl/purl.js"></script>
	<script src="<%=FRONT_JS_URL%>/common/parsley.js"></script>
	<script src="<%=FRONT_JS_URL%>/common/validate.js"></script>
	<script src="<%=FRONT_JS_URL%>/common/login.js"></script>
	<script src="<%=FRONT_JS_URL%>/common/kakao_login.js"></script>
	<!-- =================================== Footer Start =================================== -->
	<footer id="footer" class="footer_wrap sub_head_foot">
		<div class="information_area wide_max_width_area">
			<ul class="company_sns">
				<li class="list_item youtube"><a href="#" target="_blank" title="우리끼리 유튜브">youtube</a></li>
				<li class="list_item instagram"><a href="#" target="_blank" title="우리끼리 인스타그램">instagram</a></li>
				<li class="list_item facebook"><a href="#" target="_blank" title="우리끼리 페이스북">facebook</a></li>
				<li class="list_item naver"><a href="#" target="_blank" title="우리끼리 네이버블로그">naver blog</a></li>
			</ul>
			<ul class="company_links info_lists">
				<li class="list_item"><a href="#" target="_blank">회사소개</a></li>
				<li class="list_item"><a href="#" target="_blank">서비스약관 및 정책</a></li>
				<li class="list_item"><a href="#" target="_blank"><strong>개인정보취급방침</strong></a></li>
				<li class="list_item"><a href="#" target="_blank">문의하기</a></li>
				<li class="list_item"><a href="#" target="_blank"><strong>고객센터</strong></a></li>
			</ul>
			<ul class="company_info info_lists">
			<li class="list_item">우리끼리 대표이사 이순용</li>
			<li class="list_item">개인정보관리책임자 이재은</li>
			<li class="list_item">사업자등록번호 <span calss="text_spacing-0">000-00-00000</span></li>
			<li class="list_item">통신판매업 신고번호 제<span calss="text_spacing-0">2020</span>-서울강남-<span calss="text_spacing-0">0000</span>호</li>
			</ul>
			<ul class="company_contact info_lists">
				<li class="list_item">서울특별시 서초구 강남대로 <span calss="text_spacing-0">459</span> 
				백암빌딩 <span calss="text_spacing-0">4</span>층</li>
				<li class="list_item text_spacing-0">Tel 02-0000-0000</li>
				<li class="list_item text_spacing-0">Fax 02-0000-0000</li>
				<li class="list_item text_spacing-0">Email : <a class="email" href="mailto:yijaaan49@gmail.com "> yijaaan49@gmail.com </a></li>
			</ul>
			<div class="company_bottom">
				<p class="info_msg">우리끼리는 통신판매중개자이며 모임에 대한 당사자 및 주최자가 아닙니다. 따라서 우리끼리는 등록된 모임에 대하여 책임을 지지 않습니다.</p>
				<p class="copyright text_spacing-0">copyright &copy; WOORIKIRI.COM, All Rights Reserved.</p>
			</div>
		</div>
	</footer>
	<!-- =================================== Footer End =================================== -->
	<!-- Plugin  -->
	<script src="<%=FRONT_JS_URL%>/common/plugins/owl.carousel.min.js"></script>
	<!-- Script -->
	<script src="<%=FRONT_JS_URL%>/common/common.js"></script>
	<script src="<%=FRONT_JS_URL%>/common/header.js"></script>
	<script src="<%=FRONT_JS_URL%>/common/sliderRotate.js"></script>
	<script src="<%=FRONT_JS_URL%>/common/main.js"></script>
	<script src="<%=FRONT_JS_URL%>/common/today-seen.js"></script>


</body>
</html>