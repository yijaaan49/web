<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글쓰기</title>
<script>	
	function insert(frm, cPage){
		frm.action = "<%=request.getContextPath()%>/Frontcontroller?type=board&work=write&way=&cPage="+cPage;
		frm.submit();
	}
	
	
</script>
</head>
<body>
	<form name="form" method="post">
	<table>
		<tbody>
			<tr>
				<th>제목</th>
				<td><input type="text" name="wrSubject"></td>
			</tr>
			<tr>
				<th>닉네임</th> 
				<td>${USER.memNick}</td>
			</tr>
			<tr>
				<th>내용</th>
				<td>
				<textarea rows="10" cols="60" name="wrContent"></textarea></td>
			</tr>
			
		</tbody>
		<tfoot>
			<tr>
		     <td colspan="2">
		        <input type="button" value="목록" onclick="location.href='<%=request.getContextPath()%>/Frontcontroller?type=board&work=list&cPage=${cPage}&bdId=${bdId}'" />
		        <input type="button" value="입력" onclick="insert(this.form, ${cPage})" />
		        <input type="reset" value="초기화"/>
		        <input type="hidden" name="bdId" value="${bdId}">
		        <input type="hidden" name="memNo" value="${USER.memSq}">
		        <input type="hidden" name="wrNm" value="${USER.memNm}">
		        <input type="hidden" name="wrId" value="${USER.memId}">
		        <input type="hidden" name="wrNick" value="${USER.memNick}">
		        <input type="hidden" name="wrPwd" value="${USER.memPw}">
		     </td>
			</tr>
		</tfoot>
	</table>
	</form>
</body>
</html>