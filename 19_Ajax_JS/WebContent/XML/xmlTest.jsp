<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JS Ajax XML</title>
</head>
<body>
	<h1>XML 데이터 요청 처리</h1>
<script>
	//1. XMLHttpRequest 객체 생성
	var request = new XMLHttpRequest();
	
	//결과처리
		request.onreadystatechange = function(){
		if(request.readyState == 4 && request.status == 200) { //데이터 전부 응답받고 정상적으로 처리된 경우
			//XML 데이터를 HTML 형태로 변경(DOM 처리)
			var xml = request.responseXML;
			alert("xml : " + xml);
			
			//XML에서 데이터 추출
			var names = xml.getElementsByTagName("name");
			var prices = xml.getElementsByTagName("price");
			
			//추출된 데이터 사용
			let output = "";
			for (let i=0; i<names.length; i++) {
				let name = names[i].childNodes[0].nodeValue;
				let price = prices[i].childNodes[0].nodeValue;
				
				//HTML 태그 작성
				output += "<h2>"+ name + " : " + price +"</h2>";
			}
			//HTML 태그 출력(?)수정(?)
			document.body.innerHTML += output;
		}
	};	
	
	//2. open("전송방식", "요청정보", "비동기여부")
	request.open("GET", "data.xml", true);
	
	//3. send() : 실행
	request.send();
</script>
</body>
</html>