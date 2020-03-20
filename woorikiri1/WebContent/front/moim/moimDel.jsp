<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>삭제 화면</title>
<link href="css/guestbook.css" rel="stylesheet" type="text/css">
</head>
<body>
<div id="container">
        <form method="post">
            <table>
                <tbody>
                <tr>
                    <th>정말 삭제 하시겠습니까?</th>
                    <td>
					<input type="button" value="삭제" onclick="delete_moim(this.form)">
					<input type="button" value="취소" onclick="back_main()">
				</td>
                </tr>
                </tbody>
            </table>
        </form>   
    </div>
</body>
<script>
function delete_moim(frm){
	frm.action = "Frontcontroller?type=moimDel";
	frm.submit();
}
function back_main(){
	location.href="moimView.jsp";
}
</script>
</html>