<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 전달받은 품목을 장바구니에 담기 --%>
<%
	//1. 전달받은 데이터 확인
	String product = request.getParameter("product");
	
	//2. 장바구니에 담기 : ArrayList에 저장(ArrayList를 여기서 새 객체로 만들면 여기서밖에 못쓰니 session에 저장하자)
	ArrayList<String> list = (ArrayList<String>)session.getAttribute("product_list");
	if (list == null) { //세션 속성("product_list")이 없는 경우 
		session.setAttribute("product_list", new ArrayList<String>());
		list = (ArrayList<String>)session.getAttribute("product_list");//product_list 객체를 list에 담자!
	}
	list.add(product);//목록(장바구니)에 추가
	System.out.println("list : " + list);
	
%>
<script>
	//3. 쇼핑페이지로 이동(페이지 전환)
	alert("[ <%=product %> ] 추가되었습니다.");
	history.go(-1); //뒤로 이동하기(이전으로) 
</script>
