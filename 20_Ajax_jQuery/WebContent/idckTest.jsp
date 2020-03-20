<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>
<script>
	$(function(){
    	$("input[name='join']").click(function(){
    		
    		var id = $("#userId").val();
    		alert("id: " + id);
    		
    		$.ajax({
    			url: "Mycontroller",
    			type: "POST",
    			data: "id="+ id,
    			dataType: "json",
    			success: function(data) {
    				if(data.cnt > 0) {
    					alert("이미 사용중인 아이디 입니다.")
    					$('#id_check').text('아이디가 존재합니다. 다른 아이디를 입력해주세요.');
    					$('#id_check').css('color', 'red');
    					$("#userId").focus();
    					
    				} else {
    					$('#id_check').text('사용가능한 아이디입니다.');
    					$('#id_check').css('color', 'blue');
    					
    				}
    			},
    			error: function(request,status,error){
    				alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);

    			}
    			
    		});
    	});
    });
   
 
</script>
<body>
 <form method="post">
      <table width="750" border="1px" align="center">
        <tr>
          <th colspan="2" bgcolor="#E4F7BA" >회원 기본 정보</th>
        </tr>
        <tr>
          <td>아이디</td>
          <td><input type="text" name="userId" id="userId">
              <div id="id_check">4~12자의 영문 대소문자 또는 숫자로만 입력</div>
          </td>
        </tr>
      </table>
      <p align="center">
        <input type="submit" name="join" value="회원 가입">
        <input type="reset" name="reset" value="다시 입력">
      </p>
    </form>
        
</body>
</html>