<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSON 데이터 요청 처리</title>
</head>
<body>
	<h1>JSON 데이터 요청 처리</h1>
<script>
	//1. XMLHttpRequest 객체 생성
	var request = new XMLHttpRequest();

	//결과처리
	request.onreadystatechange = function(){
		if(request.readyState == 4 && request.status == 200) { //데이터 전부 응답받고 정상적으로 처리된 경우
			//받은 데이터 확인
			alert("리턴받은 값(문자열) : \n" + request.responseText);
			
			//JSON.parse() 사용 : 문자열 -> JS 객체화
			var json = JSON.parse(request.responseText);
			alert("JSON.parse() 처리후 : \n" + json);
			
			//JSON 객체에서 데이터 추출
			var output = "";
			for(let i = 0; i < json.length; i++) {
				output += "<h2>";
				output += json[i].name + " : " + json[i]["price"];
				output += "</h2>";
			}
			output += "<hr><hr>";
			
			for(let i in json) { //배열 for..in은 key값에 접근
				output += "<h2>";
				for(let key in json[i]) { //object
					output += json[i][key] + "&nbsp;&nbsp;";
				}
				output += "</h2>";
			}
			
			document.body.innerHTML += output;
		}
	};	
	
	//2. open("전송방식", "요청정보", "비동기여부")
	request.open("GET", "data.json", true);
	
	//3. send() : 실행
	request.send();
</script>
</body>
</html>