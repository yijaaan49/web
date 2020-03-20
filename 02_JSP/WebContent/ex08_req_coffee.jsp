<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>커피주문</title>
<script>
	function send_go(){
		var money = $("input[name=money]").val();
		alert(money);
		//var coffee = $("input[name=coffee]").val();
		/*
		switch(coffee) {
		case "1" :
			
		}
		if(money < totPrice) {
			alert("금액이 부족합니다.");
			
			
		}
		*/
	}
</script>
</head>
<body>
	<h1>커피주문</h1>
	<form action="ex08_resp.jsp">
		<input type="radio" name="coffee" value="1">
		아메리카노(3000원)<br>
		<input type="radio" name="coffee" value="2">
		카페모카(3500원)<br>
		<input type="radio" name="coffee" value="3">
		에스프레소(2500원)<br>
		<input type="radio" name="coffee" value="4">
		카페라떼(4000원)<br>
		수량 : <input type="number" name="su" size="3"><br>
		입금액 : <input type="number" name="money" size="10"><br>
		
		<input type="submit" value="주문처리" onclick="send_go()">
	</form>
</body>
</html>
