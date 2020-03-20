<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>

</head>
<script>
	function delete_list(frm) {
		var pwd1 = frm.wrPwd.value;
		var pwd2 = "${vo.wrPwd}";
		
		if(pwd1 != pwd2 ) {
			//비밀번호 확인작업
			alert("비밀번호를 확인하세요.");
			frm.wrPwd.value = "";
			frm.wrPwd.focus();
			return false;
		} else {
			if(confirm("정말 삭제하시겠습니까?")) {
				
				location.href= "<%=request.getContextPath()%>/Frontcontroller?type=board&work=del&way=&bdId=${vo.bdId}&sno=${vo.sno}&cPage=${cPage}";
			} else {
				return;
			}
		}
		
	}
</script>
<body>
	<form>
		<input type="password" name="wrPwd">
		<input type="button" value="비밀번호 확인" onclick="delete_list(this.form)">
		<input type="button" value="취소" onclick="location.href='<%=request.getContextPath()%>/Frontcontroller?type=board&work=detail&sno=${vo.sno }'">
	</form>
</body>
</html>