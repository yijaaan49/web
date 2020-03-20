<%@page import="com.woorikiri.front.board.dao.BoardDAO"%>
<%@page import="com.woorikiri.front.board.vo.BoardVO"%>
<%@page import="org.apache.ibatis.session.SqlSession"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 수정</title>
<style type="text/css">
	table { width: 700px; }
	tr {
	    text-align:center;
	    padding:4px 10px;
	    background-color: #F6F6F6;
	}
	th {
		width:120px;
	    text-align:center;
	    padding:4px 10px;
	    background-color: #B2CCFF;
	}
</style>
<script>
	
	function update(frm, s, p) {
		var pwd1 = frm.wrPwd.value;
		var pwd2 = "${vo.wrPwd}";
		
		if(pwd1 != pwd2 ) {
			//비밀번호 확인작업
			alert("비밀번호를 확인하세요.");
			frm.wrPwd.value = "";
			frm.wrPwd.focus();
			return false;
		}
		//비밀번호 일치하면 게시글 수정
		frm.action = "<%=request.getContextPath()%>/Frontcontroller?type=board&work=modify&way=&bdId=${vo.bdId}&sno="+s+"&cPage="+p;
		frm.submit();
	}
</script>
</head>
<body>
	<form method="post">
	<table>
	<tbody>
	<tr>
		<th>제목</th>
		<td>
			<input type="text" name="wrSubject" value="${vo.wrSubject}">
		</td>
	</tr>
	<tr>
		<th>닉네임</th>
		<td>${vo.wrNick}</td>
	</tr>
	<tr>
		<th>비밀번호</th>
		<td>
			<input type="password" name="wrPwd" id="wrPwd">
		</td>
	</tr>
	<tr>
		<th>내용</th>
		<td>
		<textarea rows="10" cols="60" name="wrContent">${vo.wrContent}</textarea></td>
	</tr>
	</tbody>
	<tfoot>
	<tr>
     <td colspan="2">
        <input type="button" value="목록" onclick="location.href='<%=request.getContextPath()%>/Frontcontroller?type=board&work=list&cPage=${cPage}&bdId=${vo.bdId }'" />
        <input type="button" value="수정" onclick="update(this.form, ${vo.sno}, ${cPage})" />
        <input type="reset" value="초기화"/>
     </td>
	</tr>
	</tfoot>
	</table>
	</form>
</body>
</html>