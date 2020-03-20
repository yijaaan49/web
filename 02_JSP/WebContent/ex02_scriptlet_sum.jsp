<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>합계구하기(ex02_scriptlet_sum.jsp)</title>
</head>
<body>
	<h2>1부터 10까지의 합계 구하기</h2>
	<h3>출력형태 : 1+2+3+...+9+10=55</h3>
	<p>1+2+3+...+9+10=
	<%
	int sum = 0;
	for(int i = 1; i <= 10; i++) {
		sum += i;
	}
	out.print(sum);
	%>
	</p>
	<hr>
	<%-- 스크립트릿, out객체를 사용해서 h3태그에 출력 --%>
	<%-- (실습) 1+2+3+4+5+6+7+8+9+10=55 --%>
	<h3>
	<%
	int num = 1;
	int tot = 0;
	for (int i = 1; i <= 10; i++){
		out.print(num + "+");
		tot += num;
		num++;
		if(i==9){
			out.print(num + "=");
			tot += num;
			break;
		}
	}
	out.print(tot);
	%>
	</h3>
	
</body>
</html>