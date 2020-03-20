<%@page import="com.bc.mybatis.GuestbookVO"%>
<%@page import="org.apache.ibatis.session.SqlSession"%>
<%@page import="com.bc.mybatis.DBService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상세화면</title>
<link href="css/guestbook.css" rel="stylesheet" type="text/css">
<script>
	function update_go(frm) {
		frm.action = "update.jsp";
		frm.submit();
	}
	function delete_go(frm) {
		frm.action = "delete.jsp";
		frm.submit();
	}
</script>
</head>
<body>
<div id="container">
        <h2>방명록 : 상세화면</h2>
        <hr>
        <p><a href="list.jsp">[목록으로 이동]</a></p>
        
        <form action="write_ok.jsp" method="post">
            <table border>
                <tbody>
                <tr>
                    <th>작성자</th>
                    <td>${guestbookVO.getName() }</td>
                </tr>
                <tr>
                    <th>제목</th>
                    <td>${guestbookVO.getSubject() }</td>
                </tr>
                <tr>
                    <th>이메일</th>
                    <td>${guestbookVO.getEmail() }</td>
                </tr>
                <tr>
                    <td colspan="2">${guestbookVO.getContent() }
                    </td>
                </tr>
                </tbody>
                <tfoot>
                    <tr>
                        <td colspan="2">
                            <input type="button" value="수 정" onclick="update_go(this.form)">
							<input type="button" value="삭 제" onclick="delete_go(this.form)">
                        </td>
                    </tr>
                </tfoot>
            </table>
        </form>    
        
    </div>
</body>
</html>