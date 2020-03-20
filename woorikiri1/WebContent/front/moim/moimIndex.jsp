<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="moimCategory.jsp"%>
</head>
<style>
	ul {
    	display: block;
    	list-style-type: disc;
    	margin-block-start: 1em;
    	margin-block-end: 1em;
    	margin-inline-start: 0px;
    	margin-inline-end: 0px;
    	padding-inline-start: 40px;
    	text-align:center;
	}
	li {
		list-style: none;
		display:inline-blcok;
	}
	img{
		width:400px;
		height:300px;
	}
	h2{
		margin: 100px 0px 0px 0px;
		text-align:center;
	}
	input.button { margin:0px 0px 0px 1100px; 
	}
</style>
<body>
	<input Type="button" class="button" value="모임생성" onclick="moim_board()">
	<h2>인기있는 모임</h2>
	<hr>
	<ul>
		<li>
			<a href="moim_view.jsp">
				<img src="C:\MyStudy\60_web\22_Moim_Board\img\1.jpg"/>
			</a>
			<a href="moim_view.jsp">
				<img src="C:\MyStudy\60_web\22_Moim_Board\img\2.jpg"/>
			</a>
			<a href="moim_view.jsp">
				<img src="C:\MyStudy\60_web\22_Moim_Board\img\3.jpg"/>
			</a>
		</li>
	</ul>
</body>
<script>
function moim_board(){
	location.href = "moim_board.jsp"
}
</script>
</html>