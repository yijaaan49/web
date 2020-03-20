<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="header.jsp"%>
<script>  
    function checkAll() {
        if (!checkMemId(form.memId.value)) {
            return false;
        }
        if (!checkPassword(form.memId.value, form.memPw.value, form.memPw2.value)) {
            return false;
        }
        if (!checkName(form.memNm.value)) {
            return false;
        }
        if (!checkNick(form.memNick.value)) {
            return false;
        }
        if (!checkGender(form.memGender.value)) {
        	return false;
        }
        if (!checkPhoneNo(form.memMobile.value)) {
        	return false;
        }
        if (!checkMail(form.memEmail.value)) {
            return false;
        }
        if (!checkBirth(form.memBirth.value)) {
        	return false;
        }
        if (!checkMaillingFl(form.maillingFl.value)) {
        	return false;
        }
        if (!checkSmsFl(form.smsFl.value)) {
        	return false;
        }
        if (!checkPrivateOpen(form.privateOpenFl.value)) {
        	return false;
        }
        return true;
    }
 
    // 공백확인 함수
    function checkExistData(value, dataName) {
        if (value == "") {
            alert(dataName + " 입력해주세요!");
            return false;
        }
        return true;
    }
 
    function checkMemId(memId) {
        //Id가 입력되었는지 확인하기
        if (!checkExistData(memId, "아이디를"))
            return false;
        
        var idRegExp = /^[a-zA-Z0-9]{4,12}$/; //아이디 유효성 검사
        if (!idRegExp.test(memId)) {
            alert($('#id_check').text());
            $('#id_check').text('아이디는 영문 대소문자 또는 숫자 4~12자리로 입력해야합니다');
			$('#id_check').css('color', 'red');
            form.memId.value = "";
            form.memId.focus();
            return false;
        } else {
            $('#id_check').text('');
        }
        return true; //확인이 완료되었을 때
    } 
    
    $(function(){
		$("input[name='idchk']").click(function(){
			
			var id = $("#memId").val();
			
			$.ajax({
				url: "IdchkController",
				type: "POST",
				data: "id="+ id,
				dataType: "json",
				success: function(data) {
					if(data.cnt > 0) {
						$('#id_check').text('아이디가 존재합니다. 다른 아이디를 입력해주세요.');
						$('#id_check').css('color', 'red');
						$("#memId").focus();
						
						return false;
					} else {
						$('#id_check').text('사용가능한 아이디입니다.');
						$('#id_check').css('color', 'blue');
						
						return true;
					}
				},
				error: function(request,status,error){
    				console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
				}
			});
		});
    });
	    
 
    function checkPassword(memId, memPw, memPw2) {
        //비밀번호가 입력되었는지 확인하기
        if (!checkExistData(memPw, "비밀번호를"))
            return false;
        //비밀번호 확인이 입력되었는지 확인하기
        if (!checkExistData(memPw2, "비밀번호 확인을"))
            return false;
 
        var password1RegExp = /^[a-zA-Z0-9]{4,12}$/; //비밀번호 유효성 검사
        if (!password1RegExp.test(memPw)) {
            $('#pw1_check').text('비밀번호는 영문 대소문자 또는 숫자 4~12자리로 입력해야합니다!');
			$('#pw1_check').css('color', 'red');
            form.memPw.value = "";
            form.memPw.focus();
            return false;
        } else {
        	$('#pw1_check').text('');
        }
        
        //비밀번호와 비밀번호 확인이 맞지 않다면..
        if (memPw != memPw2) {
            $('#pw2_check').text('두 비밀번호가 맞지 않습니다.');
			$('#pw2_check').css('color', 'red');
            form.memPw.value = "";
            form.memPw2.value = "";
            form.memPw2.focus();
            return false;
        } else {
            $('#pw2_check').text('');
        }
 
        //아이디와 비밀번호가 같을 때..
        if (memId == memPw) {
            $('#pw1_check').text("아이디와 비밀번호는 같을 수 없습니다!");
            $('#pw1_check').css('color', 'red');
            form.memPw.value = "";
            form.memPw2.value = "";
            form.memPw2.focus();
            return false;
        } else {
            $('#pw1_check').text('');
        }
        return true; //확인이 완료되었을 때
    }
 
 
    function checkName(memNm) {
        if (!checkExistData(memNm, "이름을"))
            return false;
 
        var nameRegExp = /^[가-힣A-Za-z]{2,12}$/;
        if (!nameRegExp.test(memNm)) {
            $('#name_check').text("한글 또는 영문으로 작성해주세요");
            $('#name_check').css('color', 'red');
            form.memNm.value = "";
            form.memNm.focus();
            return false;
        } else {
            $('#name_check').text('');
        }
        return true; //확인이 완료되었을 때
    }
    
    function checkNick(memNick) {
        if (!checkExistData(memNick, "닉네임을"))
            return false;
 
        var nameRegExp = /^[가-힣A-Za-z]{2,12}$/;
        if (!nameRegExp.test(memNm)) {
            $('#nick_check').text("한글 또는 영문으로 작성해주세요");
            $('#nick_check').css('color', 'red');
            form.memNick.value = "";
            form.memNick.focus();
            return false;
        } else {
            $('#nick_check').text('');
        }
        return true; //확인이 완료되었을 때
    }
    
    function checkGender(memGender) {
    	if (!checkExistData(memGender, "성별을"))
	            return false;
    }
	    
    
    function checkPhoneNo(memMobile) {
    	//휴대폰 번호가 입력되었는지 확인하기
    	if (!checkExistData(memMobile, "휴대폰 번호를"))
    		return false;
    	
    	var phoneNoregExp = /^\d{3}-\d{4}-\d{4}$/;
    	if(!phoneNoregExp.test(memMobile)) {
    		$('#phoneNo_check').text("형식을 확인해주세요. 예)010-0000-0000");
            $('#phoneNo_check').css('color', 'red');
            form.memMobile.value = "";
            form.memMobile.focus();
            return false;
    	} else {
            $('#phoneNo_check').text('');
        }
        return true; //확인이 완료되었을 때
    }
    
    function checkMail(memEmail) {
        //mail이 입력되었는지 확인하기
        if (!checkExistData(memEmail, "이메일을"))
            return false;
 
        var emailRegExp = /^[A-Za-z0-9_]+[A-Za-z0-9]*[@]{1}[A-Za-z0-9]+[A-Za-z0-9]*[.]{1}[A-Za-z]{1,3}$/;
        if (!emailRegExp.test(memEmail)) {
            $('#mail_check').text("이메일 형식을 확인해주세요. 예)id@domain.com");
            $('#mail_check').css('color', 'red');
            form.memEmail.value = "";
            form.memEmail.focus();
            return false;
        } else {
            $('#mail_check').text('');
        }
        return true; //확인이 완료되었을 때
    }
    
    function checkBirth(memBirth) {
    	if (!checkExistData(memBirth, "생년월일을")) {
        	$('#birth_check').text("생년월일을 입력해주세요");
        	$('#birth_check').css('color', 'red');
            form.memBirth.value = "";
            form.memBirth.focus();    		
    		return false;
    	} else {
    		$('#birth_check').text("");
    	}   	
    	return true;
    }
    
    $(function(){
    	$("#memBirth").datepicker({
    		dateFormat: 'yy/mm/dd',
    		changeMonth: true,
    		changeYear: true,
    		monthNames : ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
    	    monthNamesShort : ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
    	    dayNames : ['일', '월', '화', '수', '목', '금', '토'],
    	    dayNamesShort : ['일', '월', '화', '수', '목', '금', '토'],
    	    dayNamesMin : ['일', '월', '화', '수', '목', '금', '토'],
    	    yearRange: '1950:2050'
    		
    	}); 	
    });
    
    function checkAddr(memZoneCode, memAddress, memAddressSub, memAddressAdd) {
    	if (!checkExistData(memZoneCode, "우편번호를")) {
            form.memZoneCode.value = "";
            form.memZoneCode.focus();    		
    		return false;
    	} else if (!checkExistData(memAddress, "주소를")) {
            form.memAddress.value = "";
            form.memAddress.focus();    		
    		return false;
    	} else if (!checkExistData(memAddress, "상세주소를")) {
            form.memAddress.value = "";
            form.memAddress.focus();    		
    		return false;
    	}
    	return true;
    }
    
    function sample6_execDaumPostcode() {
	    new daum.Postcode({
	        oncomplete: function(data) {
	            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
	
	            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
	            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
	            var addr = ''; // 주소 변수
	            var extraAddr = ''; // 참고항목 변수
	
	            //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
	            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
	                addr = data.roadAddress;
	            } else { // 사용자가 지번 주소를 선택했을 경우(J)
	                addr = data.jibunAddress;
	            }
	
	            // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
	            if(data.userSelectedType === 'R'){
	                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
	                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
	                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
	                    extraAddr += data.bname;
	                }
	                // 건물명이 있고, 공동주택일 경우 추가한다.
	                if(data.buildingName !== '' && data.apartment === 'Y'){
	                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
	                }
	                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
	                if(extraAddr !== ''){
	                    extraAddr = ' (' + extraAddr + ')';
	                }
	                // 조합된 참고항목을 해당 필드에 넣는다.
	                document.getElementById("sample6_extraAddress").value = extraAddr;
	            
	            } else {
	                document.getElementById("sample6_extraAddress").value = '';
	            }
	
	            // 우편번호와 주소 정보를 해당 필드에 넣는다.
	            document.getElementById('sample6_postcode').value = data.zonecode;
	            document.getElementById("sample6_address").value = addr;
	            // 커서를 상세주소 필드로 이동한다.
	            document.getElementById("sample6_detailAddress").focus();
	        }
	    }).open();
    }
    
    //카테고리
    function Category(value) { 
        this.value = value; 
		this.length = 0; 
    } 

	function addCategory(category, value) { 
	    category[category.length] = new Category(value); 
		category.length++; 
    }
    
        var category = new Category();
    
        addCategory(category, "대분류");
        addCategory(category, "운동");
        addCategory(category, "음악");
        addCategory(category, "미술");

        addCategory(category[1], "중분류");
        addCategory(category[1], "구기");
        addCategory(category[1], "헬스");

        addCategory(category[1][1], "소분류");
        addCategory(category[1][1], "야구");
        addCategory(category[1][1], "축구");
        addCategory(category[1][1], "배구");

        addCategory(category[1][2], "소분류");
        addCategory(category[1][2], "유산소");
        addCategory(category[1][2], "무산소");

        addCategory(category[2], "중분류");
        addCategory(category[2], "악기");
        addCategory(category[2], "노래");

        addCategory(category[2][1], "소분류");
        addCategory(category[2][1], "현악기");
        addCategory(category[2][1], "관악기");
        addCategory(category[2][1], "타악기");

        addCategory(category[2][2], "소분류");
        addCategory(category[2][2], "성악");
        addCategory(category[2][2], "실용음악");

        addCategory(category[3], "중분류");
        addCategory(category[3], "그림");
        addCategory(category[3], "공예");

        addCategory(category[3][1], "소분류");
        addCategory(category[3][1], "회화");
        addCategory(category[3][1], "일러스트");
        addCategory(category[3][1], "캘리그라피");

        addCategory(category[3][2], "소분류");
        addCategory(category[3][2], "도예");
        addCategory(category[3][2], "자수");
   
    
    
    function initForm(form) { 
        form.subject.length = category.length; 
        for (i = 0; i < category.length; i++)
            form.subject[i].text = category[i].value; 
        form.subject.selectedIndex = 0; 
        form.contents.selectedIndex = 0;
    }
    
    function change_subject(form) { 
        var i = form.subject.selectedIndex; 
        form.contents.length = category[i].length; 
        for (j = 0; j < form.contents.length; j++) 
            form.contents[j].text = category[i][j].value; 
        form.contents.selectedIndex = 0; 
        change_contents(form); 
    } 

    function change_contents(form) { 
        var i = form.subject.selectedIndex 
        var j = form.contents.selectedIndex; 
        form.components.length = category[i][j].length; 
        for (k = 0; k < form.components.length; k++) 
            form.components[k].text = category[i][j][k].value; 
        form.components.selectedIndex = 0; 
    }
    
    function checkMailFl(maillingFl) {
    	if (!checkExistData(maillingFl, "이메일 수신여부를"))
	            return false;
    }
    
    function checkSmsFl(smsFl) {
    	if (!checkExistData(smsFl, "SMS 수신여부를"))
	            return false;
    }
    
    function checkPrivateOpen(PrivateOpenFl) {
    	if (!checkExistData(PrivateOpenFl, "정보 공개 여부를"))
	            return false;
    }
    
   
</script>

<body onload="initForm(document.form)">

	 <form name="form" action="Frontcontroller?type=join" method="post" onsubmit="return checkAll()">
      <table width="750" border="1px" align="center">
        <tr>
          <th colspan="2" bgcolor="#E4F7BA" >회원 기본 정보</th>
        </tr>
        <tr>
          <td>아이디</td>
          <td>
          <input type="text" name="memId" id="memId">
          <input type="button" name="idchk" value="중복체크">	
              <div id="id_check">4~12자의 영문 대소문자 또는 숫자로만 입력</div>
          </td>
        </tr>
        <tr>
          <td>비밀번호</td>
          <td><input type="password" name="memPw">
              <div id="pw1_check">4~12자의 영문 대소문자 또는 숫자로만 입력</div>
          </td>
        </tr>
        <tr>
          <td>비밀번호 확인</td>
          <td><input type="password" name="memPw2">
            <div id="pw2_check"></div>
            </td>
        </tr>
        <tr>
          <td>이름</td>
          <td><input type="text" name="memNm">
            <div id="name_check">한글 또는 영문으로 작성해주세요</div>
            </td>
        </tr>
        <tr>
          <td>닉네임</td>
          <td><input type="text" name="memNick">
            <div id="nick_check">한글 또는 영문으로 작성해주세요</div>
            </td>
        </tr>
        <tr>
          <td>성별</td>
          <td>
	          <input type="radio" name="memGender" value="M">남
	          <input type="radio" name="memGender" value="W">여
          </td>
        </tr>
        <tr>
          <td>휴대폰 번호</td>
          <td><input type="text" name="memMobile">
            <div id="phoneNo_check">예)010-0000-0000</div>
            </td>
        </tr>
        <tr>
          <td>메일주소</td>
          <td><input type="text" name="memEmail"> 
              <div id="mail_check">예)id@domain.com</div>
          </td>
        </tr>
        <tr>
          <td>생년월일</td>
          <td><input type="text" name="memBirth" id="memBirth">
            <div id="birth_check"></div>
            </td>
        </tr>
        <tr>
          <td>활동지역</td>
          <td>
       		<input type="text" id="sample6_postcode" placeholder="우편번호" name="memZoneCode">
			<input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
			<input type="text" id="sample6_address" placeholder="주소" name="memAddress"><br>
			<input type="text" id="sample6_detailAddress" placeholder="상세주소" name="memAddressSub">
			<input type="text" id="sample6_extraAddress" placeholder="참고항목" name="memAddressAdd">
          <div id="area_check">모임추천을 위해 꼭 선택해주세요~</div>
          </td>
        </tr>
		<tr>
          <td>관심분야</td>
          <td>
				<select name="subject" onchange="change_subject(this.form)"></select> 
				<select name="contents" onchange="change_contents(this.form)"></select> 
				<select name="components"></select>
            <div id="favorite_check">모임추천을 위해 꼭 선택해주세요~</div>
            </td>
        </tr>
        <tr>
          <td>이메일수신동의</td>
          <td>
	          <input type="radio" name="maillingFl" value="T">동의
	          <input type="radio" name="maillingFl" value="F">동의하지 않음
          </td>
        </tr>
        <tr>
          <td>SMS수신동의</td>
          <td>
	          <input type="radio" name="smsFl" value="T">동의
	          <input type="radio" name="smsFl" value="F">동의하지 않음
          </td>
        </tr>
        <tr>
          <td>정보 공개 여부</td>
          <td>
	          <input type="radio" name="privateOpenFl" value="T">공개
	          <input type="radio" name="privateOpenFl" value="F">공개하지 않음
          </td>
        </tr>
      </table>
      <p align="center">
        <input type="submit" name="join" value="회원 가입" >
        <input type="reset" name="reset" value="다시 입력">
      </p>
    </form>
 <%@ include file="footer.jsp"%>