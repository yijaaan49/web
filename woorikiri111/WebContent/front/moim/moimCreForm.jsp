<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
request.setAttribute("Pn", "1");
%>
<%@ include file="../_include/subHeader.jspf" %>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="//code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" />
<script>
$(document).ready(function(){
    
	var mCode = Math.floor(new Date().getTime() / 1000);
	document.getElementById('moimCode').value=mCode;
	
})
</script>

<h3 class="title1" style='margin-top:85px;'>
	WOORIKIRI <span>MOIM</span>
</h3>

<div class="m7">

	<div class="museum_form">
	
		<form name="frm" method="post" enctype="multipart/form-data">
		<input type="hidden" name="memId" value="${USER.getMemId()}">
		<table class="museum_table" cellpadding=0 cellspacing=0>
		<tr>
			<th>모임코드</th>
			<td><input type="text" name="moim_code" id="moimCode" readonly> <span>코드는 변경 할 수 없습니다</span></td>
		</tr>
		<tr>
			<th>카테고리</th>
			<td>
				<select name="moim_ca">
					<option value="100">교육</option>
					<option value="200">여행</option>
					<option value="300">이벤트/파티</option>
					<option value="400">전시/박람회</option>
					<option value="500">취미활동</option>
					<option value="600">공모전</option>
				</select>
			</td>
		</tr>
		<tr>
			<th>모임명</th>
			<td style="padding:10px 0px">
				<input type="text" name="moim_title" id="moim_title">
			</td>
		</tr>
		<tr>
			<th>모임장</th>
			<td>${USER.getMemNm()} <span>(모임장은 변경이 불가능합니다)</span></td>
		</tr>
		<tr>
			<th>모임일자</th>
			<td>
				<input type="text" name="sdate" id="startDate">
				<select name="moimHour" id="moimHour">
					<c:forEach var="i" begin="0" end="24" step="1">
						<option><c:out value="${i}"/></option>
					</c:forEach>	
				</select>시
				<select name="moimMin" id="moimMin">
					<c:forEach var="i" begin="0" end="50" step="10">
						<option><c:out value="${i}"/></option>
					</c:forEach>	
				</select>분
			</td>
		</tr>
		<tr>
			<th>모집인원</th>
			<td>
				<input type="text" name="moimCnt" id="moimCnt"> 명
			</td>
		</tr>
		<tr>
			<th>모임장소</th>
			<td>
				<div style='padding:5px 0px;'>
				<input type="text" name="moimZoneCode" id="moimZoneCode" placeholder="우편번호">
				<a href="#" onclick="sample6_execDaumPostcode()"><img src="<%=FRONT_IMG_URL%>/m_add_btn.jpg" alt=""/></a>
				<!-- <input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기">-->
				</div>
				<div style='padding:5px 0px;'>
				<input type="text" id="sample6_address" name="address" placeholder="주소">
				<input type="text" id="sample6_detailAddress" name="addressSub"placeholder="상세주소">
				</div>
			</td>
		</tr>
		<tr>
			<th>모임접수기간</th>
			<td>
				<input type="text" name="moimSdate" id="fromDate"  placeholder="시작일"> ~
				<input type="text" name="moimEdate" id="toDate"  placeholder="종료일">
			</td>
		</tr>
		<tr>
			<th>모임연령</th>
			<td style="padding:15px 0px">
				<input type="radio" name="ageOption" value="10">10대
				<input type="radio" name="ageOption" value="20">20대 
				<input type="radio" name="ageOption" value="30">30대
				<input type="radio" name="ageOption" value="40">40대
				<input type="radio" name="ageOption" value="50">50대 이상
				<input type="radio" name="ageOption" value="99">무관
			</td>
		</tr>
		<tr>
			<th>모임성별</th>
			<td style="padding:15px 0px">
				<input type="radio" name="gender" value="M">남자
				<input type="radio" name="gender" value="W">여자
				<input type="radio" name="gender" value="N">무관
			</td>
		</tr>
		<tr>
			<th>상세소개</th>
			<td style="padding:10px 0px">
				<textarea id="popContent" name="intro"></textarea>
			</td>
		</tr>
		<tr>
			<th>검색태그</th>
			<td style="padding:10px 0px">
				<input type="text" name="moim_tag" id="moim_tag">
			</td>
		</tr>
		<tr>
			<th>첨부파일</th>
			<td>
				<input type= "file" name="f_name1">
			</td>
		</tr>
		</table>
		
		<div class="btn_wrap">
			<a href="#" onclick="javascript:create_moim()" class="create">모임생성</a>
			<a href="<%=request.getContextPath()%>/Frontcontroller?type=join" class="cancel">취소</a>
		</div>
		</form>
	
	</div>
	

</div>
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
            document.getElementById('moimZoneCode').value = data.zonecode; //5자리 새우편번호 사용
            document.getElementById('sample6_address').value = fullAddr;

            // 커서를 상세주소 필드로 이동한다.
            document.getElementById('sample6_detailAddress').focus();
        }
    }).open();
}


$(function(){
		
	$("#fromDate").datepicker({
    	changeMonth: true,
    	changeYear: true,
    	dateFormat: 'yy-mm-dd',
        buttonImageOnly : true,
        buttonText: "날짜선택",
    	maxDate: 100,
        prevText: '이전 달',
        nextText: '다음 달',
        monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
        monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
        dayNames: ['일', '월', '화', '수', '목', '금', '토'],
        dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
        dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
        showMonthAfterYear: true,
        yearRange: '1900:2050',
        onClose: function(selectedDate) {    
            // 시작일(fromDate) datepicker가 닫힐때
            // 종료일(toDate)의 선택할수있는 최소 날짜(minDate)를 선택한 시작일로 지정
            $("#toDate").datepicker( "option", "minDate", selectedDate );
            $("#starDate").datepicker( "option", "minDate", selectedDate );
            }                
   		});
    	$('#toDate').datepicker({
    		changeMonth: true,
        	changeYear: true,
        	dateFormat: 'yy-mm-dd',
        	maxDate: 100,
            prevText: '이전 달',
            nextText: '다음 달',
            monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
            monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
            dayNames: ['일', '월', '화', '수', '목', '금', '토'],
            dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
            dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
            showMonthAfterYear: true,
            yearRange: '1900:2050',
            onClose: function( selectedDate ) {
                // 종료일(toDate) datepicker가 닫힐때
                // 시작일(fromDate)의 선택할수있는 최대 날짜(maxDate)를 선택한 종료일로 지정 
                $("#fromDate").datepicker( "option", "maxDate", selectedDate );
                $("#starDate").datepicker( "option", "minDate", selectedDate );
            }
       });
       $('#startDate').datepicker({
    	changeMonth: true,
    	changeYear: true,
    	dateFormat: 'yy-mm-dd',
        prevText: '이전 달',
        nextText: '다음 달',
        //maxDate: 0,
        monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
        monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
        dayNames: ['일', '월', '화', '수', '목', '금', '토'],
        dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
        dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
        showMonthAfterYear: true,
        yearRange: '1900:2050',
        onClose: function( selectedDate ) {
            // 종료일(toDate) datepicker가 닫힐때
            // 시작일(fromDate)의 선택할수있는 최대 날짜(maxDate)를 선택한 종료일로 지정 
            $("#toDate").datepicker( "option", "maxDate", selectedDate );
        }  
       })

});

function create_moim(){
	
	var frm = document.frm;

	frm.action="<%=request.getContextPath()%>/Frontcontroller?type=moimCreProc";
	frm.submit();
}
</script>

<%@ include file="../_include/subFooter.jspf" %>