<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="./_common.jsp" %>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
	<meta name="Robots" content="all" />
	<meta name="keywords" content="우리끼리, event, 우리끼리, 모임, 행사, 번개, 이벤트">
    <meta name="description" content="우리만 아는 작은 모임 '우리끼리'">
    <meta name="author" content="ONOFFMIX Inc. (webmaster@onoffmix.com)">
   	<link rel="stylesheet" type="text/css" href="<%=FRONT_CSS_URL%>/common.css" />
	<link rel="stylesheet" type="text/css" href="<%=FRONT_CSS_URL%>/index.css" />
	<link rel="stylesheet" href="<%=FRONT_CSS_URL%>/jquery.dragscroll.css"/>
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.js"></script>
	<script type="text/javascript" src="<%=FRONT_JS_URL%>/jquery.easing.1.3.js"></script>
	<script type="text/javascript" src="<%=FRONT_JS_URL%>/jquery.mousewheel.min.js"></script>
	<script type="text/javascript" src="<%=FRONT_JS_URL%>/jquery.browser.min.js"></script>
	<script type="text/javascript" src="<%=FRONT_JS_URL%>/jquery.dragscroll.js?v=0398129"></script>
	<script type="text/javascript" src="<%=FRONT_JS_URL%>/dragScroll.js"></script>
	<script type="text/javascript" src="<%=FRONT_JS_URL%>/common.js"></script>
	<script type="text/javascript" src="<%=FRONT_JS_URL%>/main_visual.js"></script>
</head>
<body>
<div id="wrap">
	<div id="bgblack"></div>
	<ul class="blind">
		<li><a href="#contents">본문 바로가기(Skip Contents)</a></li>
	</ul>
	<div id="header">
	<%@ include file="./_include/_header.jspf" %>	
	</div>
	
	<div id="visual">

		<ul class="vlist" id="imgSet">
			<li class="v1 on">
				<div class="bgarea"></div>
			</li>
		</ul>
		<div class="textarea">
			<h3>
				치열한 하루 하루<br />
				소중한 만남<br />
				우리만 아는 작은 만남<br />
			</h3>
			<p>
				그중에서도 지우고 싶지 않은 만남이 있습니다.<br />
				우리끼리는 언제나 당신의 행복한 만남과 함께 합니다.
			</p>
		</div>
		<ul class="vthum">
			<!-- <li class="on"><a>비주얼1</a></li> -->
		</ul>
	</div>
	
	<div class="product" id="our_product">
	
		<div class="tit">
			지금 딱! 이 모임
		</div>
		<p class="tit_btm">언제 어디서나 생활 속에 함께하는 우리끼리</p>
		
		<div class="p_lists" style="margin-top:30px;">
			<ul class="wrapper_ul">
				<c:forEach var="k" items="${mainList}">
				<li>
					<a href="<%=request.getContextPath()%>/Frontcontroller?type=moimView&sno=${k.moimSq}">
						<div class="thum"><img src="http://localhost:8080/<%=request.getContextPath()%>/front/data/moim/${k.moimFile}" alt="" width="266" height="390"/></div>
						<div class="info">
							<div class="cate">${k.moimCa}</div>
							<div class="name">${k.moimTitle}</div>
						</div>
					</a>
				</li>
				</c:forEach>
			</ul>
		</div>
		
		<div class="p_info">
			<div class="wrap">
				<span class="arr1"><img src="<%=FRONT_IMG_URL%>/main/p_arr1.gif" alt="" /></span>
				<span class="arr2"><img src="<%=FRONT_IMG_URL%>/main/p_arr2.gif" alt="" /></span>
				<div class="ds">
					<div><img src="<%=FRONT_IMG_URL%>/main/p_cursor.gif" alt="" /></div>
					DRAG & SCROLL
				</div>
			</div>
		</div>
	
	</div>
	
	<script>
		    var $container = $(".product");
		    var $scroller = $(".p_lists");
		    var $wrapper = $(".wrapper_ul");
		
		    $(window).load(function(){
		
				li = $(".p_lists ul li");
				lilen = li.length;
				liw = lilen*(li.width()+18);
				$(".p_lists ul").width(liw);
		
			});
		
		    for (var i = 0; i < 0; i++) {
		        $wrapper.append('<li>'+ i +'</li>')
		    }
		    bindDragScroll($container, $scroller);
		
		</script>
	
	
	
		
	<div id="footer">
	<%@ include file="./_include/_footer.jspf" %>	
	</div>
</div>


</body>
</html>