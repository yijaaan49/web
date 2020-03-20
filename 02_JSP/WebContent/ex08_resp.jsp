<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//(실습) 주문한 내역에 따라 계산하고 결과를 표시
	String coffee = request.getParameter("coffee");
	int cnt = Integer.parseInt(request.getParameter("su"));
	int money = Integer.parseInt(request.getParameter("money"));
%>
<%! 
int price = 0;
int totPrice = 0;

	public int calc(String coffee, int cnt) {
		switch(coffee) {
			case "1" :
				price = 3000;
				break;
			case "2" : 
				price = 3500;
				break;
			case "3" :
				price = 2500;
				break;
			case "4" : 
				price = 4000;
				break;
		}
		totPrice = price * cnt;
		return totPrice;
	}
	
	
	public int cng(int totPrice, int money) {
		int moneyCng = 0;
		moneyCng = money - totPrice;
		return moneyCng;
	}

%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문결과</title>

</head>
<body>
	<h2>주문 계산 결과</h2>
	<%--
	커피종류 : 아메리카노
	단가 : 3000원
	수량 : 3
	총금액 : 9000원
	----------------
	입금액 : 10000원
	잔돈 : 1000원
	--%>
	<ul>
		<li>커피종류 : 
			<%
				switch(coffee) {
				case "1" :
					out.print("아메리카노");
					break;
				case "2" : 
					out.print("카페모카");
					break;
				case "3" :
					out.print("에스프레소");
					break;
				case "4" : 
					out.print("카페라떼");
					break;
				}
			%>
		</li>
		<li>단가 : 
			<%
				switch(coffee) {
				case "1" :
					out.print("3000");
					break;
				case "2" : 
					out.print("3500");
					break;
				case "3" :
					out.print("2500");
					break;
				case "4" : 
					out.print("4000");
					break;
				}
			%>
		</li>
		<li>수량 : <%=cnt %></li>
		<li>총금액 : 
		<%=calc(coffee, cnt) %>
		</li>
		<li>------------------</li>
		<li>입금액 : <%=money %></li>
		<li>잔돈 : 
		<%=cng(calc(coffee, cnt), money) %>
		</li>
	</ul>

</body>
</html>









