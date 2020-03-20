<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
 //전달받은 값 추출(파라미터 값)
 String p_num = request.getParameter("p_num");
%>    
 <%-- 액션태그 useBean은 scope상에 id이름의 속성이 있으면
 	   가져다 사용하고, 없으면 새로 생성--%>
 <jsp:useBean id="dao" class="com.woorikiri.front.moim.vo.MoimVO" scope="session"/>
 
 <%
 	//DAO 객체 사용해서 제품정보 조회해서 vo에 저장
 	//ShopVO vo = dao.selectOne(p_num);
 	//System.out.println(">> content vo : " + vo)
 	
 	//EL, JSTL 사용을 위한 속성값 설정
 	//pageContext.setAttribute("vo", dao.selectOne(p_num));
 %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>모임 상세페이지</title>
<style>
	table{
		width: 600px;
		margin: 30px auto 0 auto; /*상 우 하 좌*/
		border: 1px solid navy;
		border-collapse:collapse;
		font-size:0.8em;
	}
	th, td{ border: 1px solid navy; padding: 4px;}
	th{ background-color: #dedede;}
	tfoot{ height: 3em; text-align: center;}
	.title { width: 40%;}
	.red { color:red}
</style>  
</head>
<body>
	<table>
		<tbody>
			<tr>
				<th class="title">모임명</th>
				<td>즐거운 모임 해봐요~</td>
			</tr>
			<tr>
			<th>모임생성일</th>
			<td>2020년 1월 2일</td>
		</tr>
		<tr>
			<th>접수기간</th>
			<td>2020년 1월2일 ~ 2020년 1월7일</td>
		</tr>
		<tr>
			<th>모임일자</th>
			<td>2020년 1월 20일</td>
		</tr>
		<tr>
			<th>모임장소</th>
			<td>서초구 비트캠프</td>
		</tr>
		<tr>
			<th>모임소개</th>
			<td>누구나 환영하는 모임</td>
		</tr>
		<tr>
			<th>참가연령</th>
			<td>20대,30대</td>
		</tr>
		<tr>
			<th>모임성별</th>
			<td>남자</td>
		</tr>
		<tr>
			<td colspan="2">
				<img src="C:\MyStudy\60_web\22_Moim_Board\img\STUDY.jpg" alt="상세페이지 이미지">
			</td>	
		</tr>
		</tbody>
		<tfoot>
			<tr>
				<td colspan="2">
					<input type="button" value="참여하기"
						onclick="in_moim()">
					<input type="button" value="뒤로가기"
						onclick="back_main()">
				</td>
			</tr>
		<tfoot>	
	</table>
<Script>
function in_moim(){
	alert("모임에 신청되셨습니다")
	
}

function back_main(){
	location.href = "moim_index.jsp"
}
</Script>	
</body>
</html>