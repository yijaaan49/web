<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
request.setAttribute("Pn", "7");
%>
<%@ include file="../_include/subHeader.jspf" %>

<h3 class="title1" style='margin-top:85px;'>
	WOORIKIRI <span>MEMBERSHIP</span>
</h3>

<div class="m7">

	<div class="login_box">
	 	<form name="login" method="post" action="<%=request.getContextPath()%>/Frontcontroller?type=loginProc">
		<ul>
			<li class="login_title" >
				<h3><label for="login_ID">ID</label></h3>
				<h3><label for="login_pw">Password</label></h3>
			</li>
			<li class="login_con">
				<p><input type="text" name="r_id" id="login_ID" placeholder="아이디를 입력해 주세요." value=""/></p>
				<p><input type="password" name="r_pwd" id="login_pw" placeholder="비밀번호를 입력해 주세요."/></p>
			</li>
			<li><a href="javascript:form_chk();"><img src="<%=FRONT_IMG_URL%>/login_btn.jpg" alt="" /></a></li>
		</ul>
		<div class="id_save">
			<!-- <label for="id_save">
				<input type="checkbox" name="id_save" id="id_save" value="1" /> 아이디저장 <span>개인정보보호를 위해 개인PC에서만 이용해주세요. </span>
			</label> -->
		</div><!-- id_save -->
		<div class="btn_wrap">
			<a href="<%=request.getContextPath()%>/Frontcontroller?type=find" class="findid">아이디/비밀번호찾기</a>
			<a href="<%=request.getContextPath()%>/Frontcontroller?type=join" class="join">우리끼리 회원가입</a>
		</div>
		</form>
		<script type="text/javascript">
			function form_chk(){
	
				if ($("#login_ID").val() == ""){
					alert("아이디를 입력해 주세요.");
					$("#login_ID").focus();
					return;
				}
				if ($("#login_pw").val() == ""){
					alert("비밀번호를 입력해 주세요.");
					$("#login_pw").focus();
					return;
				}
				/*if ($("#id_save").val() == "1"){
					alert("아이디저장에 체크하였습니다.");
					return;
				}*/
				document.login.submit();
	
			}
		</script>
	</div><!-- login_box -->

</div>

<%@ include file="../_include/subFooter.jspf" %>

