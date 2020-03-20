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
			<img src="<%=FRONT_IMG_URL%>/join_top02.jpg" alt=""/>
		</div>
		
		<div class="counseling">
		
			<div class="top">
				<h3><img src="<%=FRONT_IMG_URL%>/m54_bar.jpg" alt="" />회원정보 입력</h3>
			</div>
			
			<div class="join_form">
			
				<form method="post" name="resume_step2" action="Frontcontroller?type=joinOk">
					<input type="hidden" name="agree1" value="<%=request.getParameter("agree1")%>"><!-- 개인정보동의 필수 -->
					<input type="hidden" name="agree2" value="<%=request.getParameter("agree2")%>"><!-- EMAIL 선택 -->
					<input type="hidden" name="agree3" value="<%=request.getParameter("agree3")%>"><!-- SMS 선택 -->
					<input type="hidden" id="id_chk_ok" value="2">					
					<input type="hidden" id="email_chk_ok" value="1">
					<input type="hidden" name="favoritechk" id="fSize" value="">
					
					<fieldset>
					
						<legend>회원정보 입력</legend>
						<table class="join_table" cellpadding=0 cellspacing=0 >
							
							<tr>
								<th><label for="m_name">이름<span class="important"> *</span></label></th>
								<td><input type="text" id="m_name" name="m_name" /></td>
							</tr>
							<tr>
								<th><label for="m_nick">닉네임<span class="important"> *</span></label></th>
								<td><input type="text" id="m_nick" name="m_nick" /></td>
							</tr>
							<tr>
								<th><label for="m_id">아이디<span class="important"> *</span></label></th>
								<td><input type="text" id="m_id" name="m_id" placeholder="띄어 쓰기 없는 영문, 숫자로만 5~12자 이내"/> 
								<a  onClick="id_chk(this.value);"><img src="<%=FRONT_IMG_URL%>/join_id.jpg" alt=""  class="pt_var id_chk_btn" style=""/></td>
							</tr>
							<tr>
								<th><label for="m_pw">비밀번호<span class="important"> *</span></label></th>
								<td><input type="password" id="m_pw" name="m_pwd" placeholder="영문자, 숫자, 특수문자를 사용하여 8~12자리"/> <span> <span class="t_var"></span>※이용가능 특수 문자 <span class="m_var"></span>! " # $ % & ' ( ) * + , - . / : ; < = > ? @ [ ＼ ] ^ _ ` { | } </span></td>
							</tr>
							<tr>
								<th><label for="m_pw_chk">비밀번호<span class="important"> *</span></label></th>
								<td><input type="password" id="m_pw_chk" name="m_pwd2" placeholder="비밀번호 확인을 위해 한번 더 입력해 주세요."/> <span> <span class="t_var"></span>※이용가능 특수 문자 <span class="m_var"></span>! " # $ % & ' ( ) * + , - . / : ; < = > ? @ [ ＼ ] ^ _ ` { | } </span></td>
							</tr>
							<tr>
								<th><label for="m_phone">휴대폰<span class="important"> *</span></label></th>
								<td>
									<select name="m_phone1" id="m_phone">
										<option value="1">선택</option>
										<option value="010">010</option>
										<option value="011">011</option>
										<option value="012">012</option>
										<option value="016">016</option>
										<option value="017">017</option>
										<option value="018">018</option>
										<option value="019">019</option>
									</select> - <input type="text" name="m_phone2" id="m_phone2" /> - <input type="text" name="m_phone3" id="m_phone3" /></td>
							</tr>
							<tr>
								<th><label for="m_email">이메일<span class="important"> *</span></label></th>
								<td>
									<input type="text" name="email1"  id="m_email"/> @<input type="text" name="email2"  id="m_email2" style="margin-left:8px;"/>
									<select name="m_email" id="m_email3">
										<option value="1" selected>직접입력</option>
										<option value="naver.com" >naver.com</option>
										<option value="hanmail.net">hanmail.net</option>
										<option value="hotmail.com">hotmail.com</option>
										<option value="nate.com">nate.com</option>
										<option value="yahoo.co.kr">yahoo.co.kr</option>
										<option value="empas.com">empas.com</option>
										<option value="dreamwiz.com">dreamwiz.com</option>
										<option value="freechal.com">freechal.com</option>
										<option value="lycos.co.kr">lycos.co.kr</option>
										<option value="korea.com">korea.com</option>
										<option value="gmail.com">gmail.com</option>
										<option value="hanmir.com">hanmir.com</option>
										<option value="paran.com">paran.com</option>
									</select>
									<a  onClick="email_chk(this.value);">
										<img src="<%=FRONT_IMG_URL%>/join_email.jpg" alt=""  class="pt_var id_chk_btn" style=""/>
									</a>
								</td>
							</tr>
							<tr>
								<th><label for="m_address">주소<span class="important"> *</span></label></th>
								<td>
									<input type="text" id="m_address" name="m_addr" placeholder="우편번호"/> <a onclick="sample6_execDaumPostcode()" class="address_btn"><img src="<%=FRONT_IMG_URL%>/m_add_btn.jpg" alt=""  class="pt_var"/></a><br />
									<input type="text" id="m_address2" name="m_addr2" placeholder="주소정보"/> <input type="text" id="m_address3" name="m_addr3" placeholder="나머지주소를 적어주세요." />
								</td>
							</tr>
							<tr>
								<th><label for="m_list">생년월일<span class="important"> *</span></label></th>
								<td>
									<input type="text" name="birth1"  id='birth1' placeholder="년도"/> 년
									<script language="javascript"> 
										var today = new Date(); 
										var toyear = parseInt(today.getFullYear()); 
										var start = toyear - 5 
										var end = toyear - 70; 

										/*document.write("<font size=2><select name=birth1 id='birth1'>"); 
										document.write("<option value='' selected>"); 
										for (i=start;i>=end;i--) document.write("<option>"+i); 
										document.write("</select> 년  "); 
										*/
										document.write("<select name=birth2 id='birth2'>"); 
										document.write("<option value='' selected>선택"); 
										for (i=1;i<=12;i++) document.write("<option>"+i); 
										document.write("</select> 월  "); 

										document.write("<select name=birth3 id='birth3'>"); 
										document.write("<option value='' selected>선택"); 
										for (i=1;i<=31;i++) document.write("<option>"+i); 
										document.write("</select> 일  </font>"); 
									</script> 
									<span class="m_var"></span>
									<!-- <label for="lunar_calendar"><input type="radio" name="calendar" value="음력" id="lunar_calendar" /> 음력</label>
									<label for="solar_calendar"><input type="radio" name="calendar" value="양력" id="solar_calendar" /> 양력</label> -->
								</td>
							</tr>
							<tr>
								<th><label for="m_male">성별<span class="important"> *</span></label></th>
								<td>
									<label for="m_male"><input type="radio"  name="m_sex" value="M" id="m_male" /> 남성</label>
									<label for="m_female"><input type="radio" name="m_sex" value="W" id="m_female" /> 여성</label>
								</td>
							</tr>
							<tr>
								<th><label for="m_favorite">관심분야</label></th>
								<td style='padding:20px 0 20px 0;'>
									<lable for name="m_ch1"><input type="checkbox"  name="m_chk" value="100" id="m_ch1" />교육&nbsp;</lable>
									<lable for name="m_ch2"><input type="checkbox"  name="m_chk" value="200" id="m_ch2" />여행&nbsp;</lable>
									<lable for name="m_ch3"><input type="checkbox"  name="m_chk" value="300" id="m_ch3" />이벤트/파티&nbsp;</lable>
									<lable for name="m_ch4"><input type="checkbox"  name="m_chk" value="400" id="m_ch4" />전시/박람회&nbsp;</lable>
									<lable for name="m_ch5"><input type="checkbox"  name="m_chk" value="500" id="m_ch5" />취미활동&nbsp;</lable>
									<lable for name="m_ch6"><input type="checkbox"  name="m_chk" value="600" id="m_ch6" />공모전</lable>
								</td>
							</tr>
							
						</table>
					
					</fieldset>					
					
				
				</form>
			
			</div><!-- join_form -->

			<div class="btn_wrap">
				<a href="javascript:join2_chk();"><img src="<%=FRONT_IMG_URL%>/join_btn2.jpg" alt="" /></a>
				<a href="javascript:history.go(-1);"><img src="<%=FRONT_IMG_URL%>/join_btn3.jpg" alt="" /></a>
			</div><!-- btn_wrap -->
		
		</div>
		
		
	</div>
		
</div>

<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var fullAddr = ''; // 최종 주소 변수
                var extraAddr = ''; // 조합형 주소 변수

                // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    fullAddr = data.roadAddress;

                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    fullAddr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
                if(data.userSelectedType === 'R'){
                    //법정동명이 있을 경우 추가한다.
                    if(data.bname !== ''){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있을 경우 추가한다.
                    if(data.buildingName !== ''){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
                    fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('m_address').value = data.zonecode; //5자리 새우편번호 사용
                document.getElementById('m_address2').value = fullAddr;

                // 커서를 상세주소 필드로 이동한다.
                document.getElementById('m_address3').focus();
            }
        }).open();
    }
    
    $('#m_email3').change(function(){
 	   $('#m_email3 option:selected').each(function () {
 			
 			if($(this).val()== '1'){ //직접입력일 경우
 				 $('#m_email2').val('');                        //값 초기화
 				 $('#m_email2').attr('readonly',false); //활성화
 			}else{ //직접입력이 아닐경우
 				 $('#m_email2').val($(this).text());      //선택값 입력
 				 $('#m_email2').attr('readonly',true); //비활성화
 			}
 			 $("#email_chk_ok").val(2);//입력값이 변경되면 이메일 체크 초기화
 	   });
 	});
    
 	//id 값을 수정하면 발생하는 이벤트
	$('#m_id').change(function() {
	  $("#id_chk_ok").val(2);
	});
 	
	//email 값을 수정하면 발생하는 이벤트(이메일 체크 초기화)
	$('#m_email').change(function() {
	  $("#email_chk_ok").val(2);
	});
	$('#m_email2').change(function() {
	  $("#email_chk_ok").val(2);
	});
	
	function id_chk(str){

	  if($("#m_id").val() != ""){
		    var r_m_id = $("#m_id").val();
		    
		    alert(r_m_id);
			$.ajax({
					url: "${pageContext.request.contextPath}/IdchkController2",
					type: "post",
					data: {m_id:r_m_id},
					timeout: 30000,//통신시간제한
					cache : false,//이전 요청 캐쉬저장 여부
					success: function(data) {

						var json = JSON.parse(data);
						
						console.log(json.id);//
						
						var objt = {};
						
						if(JSON.stringify(json)!='{}'){
							//alert(json.id);//리턴값
							if(json.id=='가능'){
								alert(r_m_id+'는 사용 가능합니다.');
								$("#id_chk_ok").val(1);
								return;
							}else {
								alert(r_m_id+'는 사용할수 없습니다.');
								$("#id_chk_ok").val(2);
								return ;
							}

						}else {
							alert('띄어 쓰기 없는 영문, 숫자로만 5~12자만 가능합니다.');
							$("#id_chk_ok").val(2);
						}
					},error: function(xhr, textStatus, errorThrown) {
						alert("데이터 조회에 실패했습니다. 잠시후에 시도해 주세요.");
					}
				});
		
	  }else {
		alert("아이디를 입력해주세요.");
	  }
	}
	
	function email_chk(str){
		if($("#m_email").val() != ""){
			var r_m_email1 = $("#m_email").val();
			var r_m_email2 = $("#m_email2").val();
			//alert(r_m_email1+"@"+r_m_email2);

			$.ajax({
				url: "${pageContext.request.contextPath}/EmailchkController",
				type: "post",
				data: {m_email1:r_m_email1,m_email2:r_m_email2},
				timeout: 30000,//통신시간제한
				cache : false,//이전 요청 캐쉬저장 여부
				success: function(data) {
					
					var json = JSON.parse(data);
					console.log(json.id);//
					
					if(JSON.stringify(json)!='{}'){

						//alert(json.id);//리턴값
						if(json.id=='가능'){
							alert(r_m_email1+"@"+r_m_email2+'는 사용 가능합니다.');
							$("#email_chk_ok").val(1);
							return;
						}else {
							alert(r_m_email1+"@"+r_m_email2+'는 사용할수 없습니다.');
							$("#email_chk_ok").val(2);
							return ;
						}

					}else {
						alert('이메일 형식이 틀립니다.');
						$("#email_chk_ok").val(2);
					}
				},error: function(xhr, textStatus, errorThrown) {
					alert("데이터 조회에 실패했습니다. 잠시후에 시도해 주세요.");
				}
			});
					   
				
			 
		 }else {
			alert("이메일을 입력해주세요.");
		}
			
	}

	function join2_chk(w){

		if ($("#m_name").val() == ""){
			alert("이름을 입력해 주세요.");
			$("#m_name").focus();
			return;
		}
		
		if ($("#m_nick").val() == ""){
			alert("닉네임을 입력해 주세요.");
			$("#m_nick").focus();
			return;
		}

		if($('#m_id').val() == "" ){
			alert("아이디를 입력해 주세요.");
			$("#m_id").focus();
			return;
		}

		if($('#id_chk_ok').val() == "2" ){
			alert("아이디 중복체크를 해주세요");
			$("#m_id").focus();
			return;
		}

		

		if($('#m_pw').val() == "" ){
			alert("비밀번호를 입력해 주세요.");
			$("#m_pw").focus();
			return;
		}



		if($('#m_pw_chk').val() == "" ){
			alert("비밀번호를 입력해 주세요.");
			$("#m_pw_chk").focus();
			return;
		}
		if($('#m_pw_chk').val() != $('#m_pw').val() ){
			alert("비밀번호가 다릅니다.");
			$("#m_pw_chk").focus();
			return;
		}

		var reg_pwd = /^[0-9A-Za-z~!@#$%^&*]{5,20}$/;
		 if(!reg_pwd.test($('#m_pw_chk').val())){
			alert("비밀번호는  숫자,영문 ,특수문자 ( ! \" # $ % & ' ( ) * + , - . / : ; < = > ? @ [ ＼ ] ^ _ \` { | })  5~20자만 가능합니다.");
			 return ;

		 }
				
		if($('#m_phone').val() == "1" ){
			alert("휴대폰 번호를 선택해 주세요.");
			$("#m_phone").focus();
			return;
		}


		if($('#m_phone2').val() == "" ){
			alert("휴대폰 번호를 입력해 주세요.");
			$("#m_phone2").focus();
			return;
		}

		if($('#m_phone3').val() == "" ){
			alert("휴대폰 번호를 입력해 주세요.");
			$("#m_phone3").focus();
			return;
		}

			if ($("#m_email").val() == ""){
			alert("이메일을 입력해 주세요.");
			$("#m_email").focus();
			return;
		}
		if ($("#m_email2").val() == ""){
			alert("이메일을 입력해 주세요.");
			$("#m_email2").focus();
			return;
		}

		if($('#email_chk_ok').val() == "2" ){
			alert("이메일 중복체크를 해주세요");
			$("#m_email").focus();
			return;
		}

		if ($("#m_address").val() == ""){
			alert("우편번호를 입력해 주세요.");
			$("#m_address").focus();
			return;
		}
			if ($("#m_address2").val() == ""){
			alert("주소정보를 입력해 주세요.");
			$("#m_address2").focus();
			return;
		}
			if ($("#m_address3").val() == ""){
			alert("나머지 주소를 입력해 주세요.");
			$("#m_address3").focus();
			return;
		}

		if ($("#birth1").val() == ""){
			alert("생년월일을 선택해 주세요.");
			$("#birth1").focus();
			return;
		}

		if ($("#birth2").val() == ""){
			alert("생년월일을 선택해 주세요.");
			$("#birth2").focus();
			return;
		}

		if ($("#birth3").val() == ""){
			alert("생년월일을 선택해 주세요.");
			$("#birth3").focus();
			return;
		}
		

		if($('input[name=m_sex]').is(':checked') == false ){;
			alert("성별을 선택해 주세요.");
			$("#m_male").focus();
			return;
		}
		
		
		
		if($("input:checkbox[name=m_chk]:checked").length==0){
			
			alert("관심분야를 하나는 선택하셔야 합니다");
			
			return false;
			
		}
		
		var fSize = "";
		$("input[name=m_chk]:checked").each(function() {
			if(fSize == ""){
				fSize = $(this).val();
			} else {
				fSize = fSize + "," + $(this).val();
			}
		});
		$('#fSize').val(fSize)



		document.resume_step2.submit();

	}
	
</script>

<%@ include file="../_include/subFooter.jspf" %>