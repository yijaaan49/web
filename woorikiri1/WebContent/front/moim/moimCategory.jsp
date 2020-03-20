<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#wrap{
			margin: 0 auto;
	}
	
	hr.hr1{
			width: 600px;
			border: 1px solid navy;
	}
	
	#header{
			font-size: 2em;
	}
	#header, #nav{
		width:600px;
		margin: 10px auto;
		text-align:center;
	}
	#nav { font-size: 1.3em;}
	#nav a{ text-decoraion: none;}
	#nav a:hover{ color:red;}


</style>
<body>
<div id="wrap">
	<hr class="hr1">
	<div id="header">
		<span class="title">모임리스트</span>
	</div>
	<hr class="hr1">
	<div id="nav">
		<a href="product_list.jsp?category=cate001">운동</a>
		<a href="product_list.jsp?category=cate002">댄스</a>
		<a href="product_list.jsp?category=cate003">여행</a>
		<a href="product_list.jsp?category=cate004">사교</a>
		<a href="product_list.jsp?category=cate005">공연/예술</a>
		<a href="product_list.jsp?category=cate006">스터디</a>
	</div>
</div>
</body>
</html>