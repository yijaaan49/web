<%@page import="com.bc.mybatis.ShopVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장바구니 보기</title>
<style>
	table {
		width: 600px;
		margin: 30px auto 0 auto; /* 상 우 하 좌 */
		border: 1px solid navy;
		border-collapse: collapse;
		font-size: 0.8em;
	}
	th, td {
		border: 1px solid navy; padding: 4px;
	}
	th {
		background-color: #dedede;
	}
	.red {
		color: red;
	}
	#total {
		height: 70px;
		font-size: 1.5em;
		text-align: center;
	}
</style>

</head>
<body>
	<jsp:include page="shop.jsp"/>

	<jsp:useBean id="cart" class="com.bc.mybatis.Cart" scope="session"/>

	<%-- EL, JSTL 사용을 위한 속성값 설정(set 태그사용) --%>
	<c:set var="list" value="${cart.getList() }"/> <%-- default: pageScope --%>
	
	<table>
		<tr>
			<td colspan="6">::장바구니 내용</td>
		</tr>
		<tr>
			<th>제품번호</th>
			<th>제품명</th>
			<th>단가</th>
			<th>수량</th>
			<th>금액</th>
			<th>삭제</th>
		</tr>

		<c:if test="${list == null || list.size()<1 }">
			<tr>
				<td colspan="6">장바구니에 담긴 제품이 없습니다.</td>
			</tr>
		</c:if>
		<c:if test="${list.size() >= 1 }">
			<c:forEach var="vo" items="${list }">
				<tr>
					<td>${vo.getP_num() }</td>
					<td>${vo.getP_name() }</td> 
					<td>정가 : ${vo.getP_price() }
						<span class="red">세일가격 : ${vo.getP_saleprice() }원</span>
					</td>
					<td>
					<form action="editProduct.jsp" method="get">
						<input type="number" name="su" size="3"	value="${vo.getQuant() }">
						<input type="hidden" name="p_num" value="${vo.getP_num() }">
						<input type="submit" value="수정">
					</form>
					</td>
					<td>${vo.getTotalprice() }</td>
					<td>
						<input type="button" value="삭제"
							onclick="javascript:location.href='delProduct.jsp?p_num=${vo.getP_num()}'">
					</td>
				</tr>
			</c:forEach>
			<tr>
				<td colspan="6" id="total">총 결제금액 : ${cart.getTotal() }원</td>
			</tr>
		</c:if>
	</table>
</body>
</html>