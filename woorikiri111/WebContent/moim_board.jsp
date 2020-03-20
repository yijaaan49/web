<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="//code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" />
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="//code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
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
</script>
<meta charset="UTF-8">
<title>모임생성</title>
</head>
<body>
<div id="category">
<form method="post">
	<table border>
		<tr>
			<th>카테고리1</th>
			<td>
				<select>
	 				<option value="">::선택</option>
	 				<option value="001">운동</option>
	  				<option value="002">게임</option>
	  				<option value="003">사교</option>
				</select>
				<select>
					<option value="">::선택</option>
					<option value="001001">모임</option>
	  				<option value="001002">축구</option>
	  				<option value="001003">배틀그라운드</option>
				</select>
				<select>
					<option value="">::선택</option>
					<option value="001001001">축구모임</option>
	  				<option value="001001002">게임모임</option>
	  				<option value="001001003">회화모임</option>
				</select>
				
			</td>
		</tr>
		<tr>
			<th>모임명</th>
			<td><input type="text" name="title"></td>
		</tr>
		<!--  
		<tr>
			<th>모임소개</th>
			<td><textarea name="intro" rows="2" cols="40"></textarea></td>
		</tr>
		-->
		<tr>
			<th>모임장</th>
			<td><input type="text" name="memId"></td>
		</tr>
		<tr>
			<th>모임일자</th>
			<td><input type="text" name="date" id="datepicker1"></td>
		</tr>
		<tr>
			<th>모임장소</th>
			<td><input type="text" id="sample6_postcode" name="" placeholder="우편번호">
				<input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
				<input type="text" id="sample6_address" placeholder="주소"><br>
				<input type="text" id="sample6_detailAddress" placeholder="상세주소">
				<input type="text" id="sample6_extraAddress" placeholder="참고항목">
			</td>
		</tr>
		<tr>
			<th>참가연령</th>
			<td>
			<input type="checkbox" name="ageOption" value="10">10대
			<input type="checkbox" name="ageOption" value="20">20대 
			<input type="checkbox" name="ageOption" value="30">30대
			<input type="checkbox" name="ageOption" value="40">40대
			<input type="checkbox" name="ageOption" value="50">50대 이상
			</td>
		</tr>
		<tr>
			<th>모임성별</th>
			<td>
			<input type="checkbox" name="gender" value="M">남자
			<input type="checkbox" name="gender" value="W">여자
			</td>
		</tr>
		<tr>
			<th>상세소개</th>
			<td><textarea name="intro" rows="20" cols="40"></textarea></td>
		</tr>
		<tr>
			<th>첨부파일</th>
			<td><input type="file" name="file"></td>
		</tr>
	</table>
	<input type="button" value="개설하기" onclick="create_moim(this.form)">
	<input type="button" value="취소하기" onclick="back_main()">
</form>	
</div>
<script>
	function create_moim(frm){
		frm.action="frontcontroller?type=create";
		frm.submit();
		alert("모임이 생성되었습니다");
	}
	function create_moim(){
		alert("모임이 생성되었습니다");
	}
	function back_main(){
		location.href="moim_index.jsp";
	}
    $.datepicker.setDefaults({
    	changeMonth: true,
    	changeYear: true,
    	dateFormat: 'yy/mm/dd',
        prevText: '이전 달',
        nextText: '다음 달',
        monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
        monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
        dayNames: ['일', '월', '화', '수', '목', '금', '토'],
        dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
        dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
        showMonthAfterYear: true,
        yearRange: '1900:2050'
    });

    $(function() {
        $("#datepicker1").datepicker();
    });
</script>
</body>
</html>