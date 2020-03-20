<%@page import="com.woorikiri.front.moim.dao.MoimDAO"%>
<%@page import="com.woorikiri.front.moim.vo.MoimVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  



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
<form method="post">
	<table>
		<tbody>
			<tr>
				<th class="title">모임명</th>
				<td>${MoimVO.moimTitle}</td>
			</tr>
		<tr>
			<th>접수기간</th>
			<td>${MoimVO.moimSdate} ~ ${MoimVO.moimEdate}</td>
		</tr>
		<tr>
			<th>모임일자</th>
			<td>${MoimVO.moimDate}&nbsp;
				${MoimVO.moimHour}시
				${MoimVO.moimMin}분
			</td>
		</tr>
		<tr>
			<th>모임인원</th>
			<td>${MoimVO.moimCnt}명
			</td>
		</tr>
		
		<tr>
			<th>모임연령</th>
			<td>${MoimVO.moimAgeOption}대</td>
		</tr>
		<tr>
			<th>모임성별</th>
			<td>${MoimVO.moimGender}</td>
		</tr>
		
		<tr>
			<th>모임장소</th>
			<td>${MoimVO.moimAddress}
				${MoimVO.moimAddressSub}
				${MoimVO.moimAddressAdd}
			</td>
		</tr>
		<tr>
			<th>모임소개</th>
			<td>${MoimVO.moimIntro}</td>
		</tr>
		<tr>
		<c:choose>
			<c:when test="${empty BoardFileVO.bfFile}">
		 		<td colspan="2">
		 		<img src="img/default_image.png" width="600" height="600">
		 		</td>
		 	</c:when>
		 	<c:otherwise>
		 		<td colspan="2">
		 		<img src="upLoad/${BoardFileVO.bfFile}" alt="상세페이지 이미지" width="600" height="600">
		 		</td>
		 	</c:otherwise>
		</c:choose> 		
		</tr>
		</tbody>
		<tfoot>
			<tr>
				<td colspan="2">
					<input type="button" value="참여하기"
						onclick="in_moim(this.form)">
					<input type="button" value="찜하기"
				 		onclick="moim_pick(this.form)">	
					<input type="button" value="뒤로가기"
						onclick="back_main(this.form)">
					<input type="button" value="수정하기"
					 	onclick="moim_modify(this.form)">
					<input type="button" value="삭제하기"
					 	onclick="moim_delete(this.form)">				
				</td>
			</tr>
		<tfoot>	
	</table>
</form>	
<script>
function in_moim(){
	alert("모임에 신청되셨습니다")
}

function moim_pick(frm) {
	frm.action="";
	frm.submit();
}

function moim_modify(frm){
	frm.action="<%=request.getContextPath()%>/Frontcontroller?type=moimMod";
	frm.submit();
}



function back_main(frm){
	frm.action="<%=request.getContextPath()%>/Frontcontroller?type=moim";
	frm.submit();
}



function moim_delete(frm){
	frm.action="<%=request.getContextPath()%>/Frontcontroller?type=moimDel";
	frm.submit();
}
</script>	
</body>
</html>