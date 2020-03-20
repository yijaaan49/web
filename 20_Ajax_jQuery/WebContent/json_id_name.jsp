<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jQuery Ajax</title>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script>
	$(document).ready(function(){
		$("#getDataBtn").click(function(){
			alert("#getDataBtn 클릭~~~");
			getIdName();
		});
	});
	
	function getIdName() {
		//alert("getIdName() 실행~~");
		/*
			jQuery.ajax({url, type, data, datatype});
			$.ajax(url, {type, data, datatype});
			$.ajax({url, type, data, datatype});
		   	url : 서버 url (jsp, php, asp);
			type : get, post
			data : 서버의 전송되는 데이터
			dataType : 응답결과의 데이터 형태 (xml, html, json, text, script,....)
			success : 성공한 경우 
			error : 실패한 경우		
		*/
		$.ajax("getIdName", {
			type : "get",
			dataType : "json", //응답결과 데이터 타입
			success : function(result){//성공시
				//{"id":"admin", "name":"관리자"}
				alert("전달받은 결과 값: " + result);
				var output = "";
				output += "<h2>아이디 : " + result.id + "</h2>"
				output += "<h2>이름 : " + result.name + "</h2>"
				
				$("dataDisp").html(output);
			}, 
			error : function(jqXHR, textStatus, errorThrown){//실패시
				alert("Ajax 처리 실패 : \n"
						+ "jqXHR.readyState : " + jqXHR.readyState + "\n"
						+ "textStatus : " + textStatus + "\n"
						+ "errorThrown : " + errorThrown);
			} 
		});
	}
</script>
</head>
<body>
	<h1>(jQuery)Ajax JSON 요청 처리</h1>
	<button id="getDataBtn">JSON 데이터 가져오기(id, name)</button>
	<hr>
	<div id="dataDisp"></div>
	<hr>
	<h2>위 영역에 Ajax에 의해 가져온 데이터 표시</h2>
</body>
</html>