<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
    int groupNo = Integer.parseInt(request.getParameter("groupNo"));
    int groupThread = Integer.parseInt(request.getParameter("groupThread"));  
    int groupSno = Integer.parseInt(request.getParameter("groupSno"));
%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>질문 답변글</title>
<style type="text/css">
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
td { text-align: left; }	
</style>
<script type="text/javascript">
	function sendData() {
		for (var i = 0; i < document.forms[0].elements.length; i++) {
			if (document.forms[0].elements[i].value == "") {
				if (i == 3)	continue;
				alert(document.forms[0].elements[i].name + "를 입력하세요");
				document.forms[0].elements[i].focus();
				return;//수행 중단
			}
		}
		document.forms[0].submit();
	}
</script>
</head>
<body>
	<H2> 답변 </H2>
	<form action="frontcontroller?type=answer" method="post">
		<table width="700">
		<tbody>
			<tr>
				<th>담당자 번호</th>
				<td align="left"><input type="text" name="answerManagerNo"></td>
			</tr>
			<tr>
				<th>제목</th>
				<td align="left"> <input type="text" name="answerSubject"></td>
			</tr>
			<tr>
				<th>내용</th>
				<td align="left"><textarea rows="10" cols="60" name="answerContent"></textarea>
				</td>
			</tr>
			<tr>
				<td colspan="2">
				<input type="button" value="댓글입력" onclick="sendData()" /> 
				<input type="button" value="목록" onclick="javascript:location.href='list.jsp'" />
				<input type="reset" value="취소" />
				</td>
			</tr>
			<input type="hidden"name="groupNo" value="<%=groupNo %>" />
			<input type="hidden"name="groupThread" value="<%=groupThread %>" />
			<input type="hidden"name="groupSno" value="<%=groupSno %>" />
            </tbody>
		</table>
	</form>
</body>
</html>