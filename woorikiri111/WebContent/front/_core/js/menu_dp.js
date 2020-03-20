var URL = "/";
var HOME = "/index.php";

function newWin(url){
	window.open(url,"","toolbar=yes,location=yes,directories=yes,status=yes,menubar=yes,scrollbars=yes,resizable=yes");
}

function newWin_size(url){
	window.open(url,"","toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=yes,resizable=no,width=820,height=700");
}

function M00(rnum){ // 
	if(rnum == 0){
		location.href = HOME;
	}
}

function M01(rnum){ // 
	switch(rnum){
		case 0 :
		case 1 : // 
			location.href = URL+"m11.php?pn=1&sn=1";
		break;
		case 2 : //
			location.href = URL+"m12.php?pn=1&sn=2";
		break;
		case 3 : // 
			location.href = URL+"m13.php?pn=1&sn=3";
		break;
		case 4 : // 
			location.href = URL+"m14.php?pn=1&sn=4";
		break;
		default :
			alert(rnum+" : 준비중인 페이지입니다.");
	}
}

function M02(rnum){ // 
	switch(rnum){
		case 0 :
		case 1 : // 
			location.href = URL+"m21.php?pn=2&sn=1";
		break;
		case 2 : //
			location.href = URL+"m22.php?pn=2&sn=2";
		break;
		case 3 : // 
			location.href = URL+"m23.php?pn=2&sn=3";
		break;
		case 4 : // 
			location.href = URL+"m24.php?pn=2&sn=4";
		break;
		default :
			alert(rnum+" : 준비중인 페이지입니다.");
	}
}


function M03(rnum){ // 
	switch(rnum){
		case 0 :
		case 1 : // 
			location.href = URL+"m31.php?pn=3&sn=1";
		break;
		case 2 : //
			location.href = URL+"m32.php?pn=3&sn=2";
		break;
		case 3 : // 
			location.href = URL+"m33.php?pn=3&sn=3";
		break;
		case 4 : // 
			location.href = URL+"m34.php?pn=3&sn=4";
		break;
		default :
			alert(rnum+" : 준비중인 페이지입니다.");
	}
}

function M04(rnum){ // 
	switch(rnum){
		case 0 :
		case 1 : // 
			location.href = URL+"board/bbs/board.php?bo_table=m41";
		break;
		case 2 : // 
			location.href = URL+"m42.php?pn=4&sn=2";
		break;
		default :
			alert(rnum+" : 준비중인 페이지입니다.");
	}
}

function M05(rnum){ // 
	switch(rnum){
		case 0 :
		case 1 :
			location.href = URL+"board/bbs/board.php?bo_table=m51&pn=5&sn=1";
		break;
		default :
			alert(rnum+" : 준비중인 페이지입니다.");
	}
}


function M06(rnum){ // 
	switch(rnum){
		case 0 : 
		case 1 : // 
			location.href = URL+"m61.php?pn=6&sn=1";
		break;
		case 2 : //
			location.href = URL+"m62.php?pn=6&sn=2";
		break;
		case 3 : // 
			location.href = URL+"m61.php?pn=6&sn=3";
		break;
		case 4 : //
			location.href = URL+"m61.php?pn=6&sn=4";
		break;
		case 5 : // 
			location.href = URL+"m61.php?pn=6&sn=5";
		break;
		case 6 : // 
			location.href = URL+"m61.php?pn=6&sn=6";
		break;
		default :
			alert(rnum+" : 준비중인 페이지입니다.");
	}
}

function M07(rnum){ // 
	switch(rnum){
		case 0 :
		case 1 : // 
			location.href = URL+"board/bbs/board.php?bo_table=m71&pn=7&sn=1";
		break;
		case 2 : // 
			location.href = URL+"board/bbs/board.php?bo_table=m72&pn=7&sn=2";
		break;
		case 3 : // 
			location.href = URL+"board/bbs/board.php?bo_table=m73&pn=7&sn=3";
		break;
		case 4 : // 
			location.href = URL+"m74.php?pn=7&sn=4";
		break;

		default :
			alert(rnum+" : 준비중인 페이지입니다.");
	}
}

function M08(rnum){ // 
	switch(rnum){
		case 0 :
		case 1 : // 메일보내기
			window.open('mailto:willihot@nate.com'); 
		break;
		case 2 : //
			location.href = URL+"board/bbs/board.php?bo_table=m82&pn=8&sn=2";
		break;
		case 3 : // ebook
			newWin('/ebook/lubeans_ebook.html');
		break;
		default :
			alert(rnum+" : 준비중인 페이지입니다.");
	}
}

function M09(rnum){ // 
	switch(rnum){
		case 0 :
		case 1 : // 
			location.href = URL+"m91.php?pn=9&sn=1";
		break;
		case 2 : // 
			location.href = URL+"m92.php?pn=9&sn=2";
		break;

		default :
			alert(rnum+" : 준비중인 페이지입니다.");
	}
}

function topM(rnum){ // top menu
	switch(rnum){
		case 0 :
		case 1 : // home
			location.href = HOME;
		break;
		case 2 : // login
			login();
		break;
		case 3 : // join
			location.href = URL+"board/bbs/register.php";
		break;
		/*
		case 4 : // FAQ
			location.href = URL+"";
		break;
		case 5 : // SITE MAP
			location.href = URL+"";
		break;

		case 6 : // 
			location.href = URL+"";
		break;
		*/
		case 7 : // logout
			logout();
		break;
		case 8 : // 회원수정
			location.href = URL+"board/bbs/member_confirm.php?url=register_form.php";
		break;
		default :
			alert(rnum+" : 준비중인 페이지입니다.");
	}
}

function admin(){ // admin
			location.href = "http://msand.co.kr";
			
}


/*********************************************************************
*  Right Quick Menu Control
// initMoving(document.getElementById("qmn"), 10, 50, 10);
**********************************************************************/
/*
function initMoving(target, position, topLimit, btmLimit) {
	if (!target){
		return false;
	}

	var obj = target;
	obj.initTop = position;
	obj.topLimit = topLimit;
	obj.bottomLimit = Math.max(document.documentElement.scrollHeight, document.body.scrollHeight) - btmLimit - obj.offsetHeight;

	obj.style.position = "absolute";
	obj.top = obj.initTop;
	obj.left = obj.initLeft;

	if (typeof(window.pageYOffset) == "number") { //WebKit
		obj.getTop = function() {
			return window.pageYOffset;
		}
	}else if (typeof(document.documentElement.scrollTop) == "number"){
		obj.getTop = function() {
			return Math.max(document.documentElement.scrollTop, document.body.scrollTop);
		}
	}else{
		obj.getTop = function() {
			return 0;
		}
	}

	if (self.innerHeight) { //WebKit
		obj.getHeight = function() {
			return self.innerHeight;
		}
	} else if(document.documentElement.clientHeight) {
		obj.getHeight = function() {
			return document.documentElement.clientHeight;
		}
	}else{
		obj.getHeight = function() {
			return 500;
		}
	}

	obj.move = setInterval(function() {
		if (obj.initTop > 0) {
			pos = obj.getTop() + obj.initTop;
		}else{
			pos = obj.getTop() + obj.getHeight() + obj.initTop;
			//pos = obj.getTop() + obj.getHeight() / 2 - 15;
		}

		if (pos > obj.bottomLimit){
			pos = obj.bottomLimit;
		}
		if (pos < obj.topLimit){
			pos = obj.topLimit;
		}
			interval = obj.top - pos;
			obj.top = obj.top - interval / 5;
			obj.style.top = obj.top + "px";
		}, 30)
}

*/