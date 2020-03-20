<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
request.setAttribute("Pn", "7");
%>
<%@ include file="../_include/subHeader.jspf" %>

<h3 class="title1" style='margin-top:85px;'>
	WOORIKIRI <span>MEMBERSHIP</span>
</h3>

<div class="m7">
	
	<div class="join_wrap">
		<div class="join_top">
			<img src="<%=FRONT_IMG_URL%>/join_top01.jpg" alt=""/>
		</div>
		
		<div class="privacy">
	
			<h3><img src="<%=FRONT_IMG_URL%>/m54_bar.jpg" alt="" />개인정보 수집 및 이용동의(필수) <label for="agree"><input type="checkbox" id="agree" name="agree1" value="T"/>동의합니다.</label> </h3>
			
			<pre>
			
				
			
			</pre>
	
		</div>
		
		<form method="post" name="resume_start" action="Frontcontroller?type=join2">
			<div class="email_agree">
				<h3><img src="<%=FRONT_IMG_URL%>/sub/m54_bar.jpg" alt="" />이메일 수신 동의(선택) <label for="email_agree"><input type="checkbox" name="agree2" value="T" id="email_agree"/>동의합니다.</label> </h3>
			</div><!-- email_agree -->
		
			<div class="sms_agree">
				<h3><img src="<%=FRONT_IMG_URL%>/sub/m54_bar.jpg" alt="" />SMS 서비스 수신 동의(선택) <label for="sms_agree"><input type="checkbox" id="sms_agree" name="agree3" value="T"/>동의합니다.</label> </h3>
			</div><!-- sms_agree -->
		</form>
		<div class="btn_wrap">
			<a href="javascript:join_agree_chk()"><img src="<%=FRONT_IMG_URL%>/join_btn.jpg" alt="" /></a>
		</div><!-- btn_wrap -->
		
	</div>
	
	
	
</div>

<script type="text/javascript">
	
	function join_agree_chk(w){
		if($('#agree').is(':checked') == false ){;
			alert("개인정보 수집 및 이용에 동의해 주세요.");
			$("#agree").focus();
			return;
		}

	


	//	$("#send_type").val(w);
		document.resume_start.submit();
	//location.href = "/join2.php"; 
	}


</script>


<%@ include file="../_include/subFooter.jspf" %>
