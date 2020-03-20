//-----------------------------------------------------
/*****         IE6 패치 전용 투명이미지          *****/
//-----------------------------------------------------
//PNG
function setPng24(obj) { 
	obj.width=obj.height=1; 
	obj.className=obj.className.replace(/\bpng24\b/i,''); 
	obj.style.filter = 
	"progid:DXImageTransform.Microsoft.AlphaImageLoader(src='"+ obj.src +"',sizingMethod='image');" 
	obj.src='';  
	return ''; 
}


//-----------------------------------------------------
/*****       메인 상품상세 레이어 띄우기         *****/
//-----------------------------------------------------
var oldShownObj = null; 
function open_layer(SH,idx){
	SH_div = document.getElementById(SH + idx);
	
	if(oldShownObj != SH_div) {
		if(oldShownObj != null) 
			oldShownObj.style.display="none"; 
			
			SH_div.style.display=""; 

			oldShownObj=SH_div;		
	} else { 
		SH_div.style.display="none";
		oldShownObj = null; 
	}
}

function clsChange(obj){
	$(obj).css("cursor","pointer");
	
	if($(obj).hasClass("click")){
		$(obj).addClass("click");
	}else{
		$(obj).addClass("over");
	}

	$(obj).mouseout(function () {
		if($(obj).hasClass("click")){
			$(obj).addClass("click");
		}else{
			$(obj).removeClass("over");
		}
	});
	
	$(obj).click(function () {
		$(this).parent("ul").removeClass("border_off");
		$(this).parent("ul").addClass("border_on");
		$(this).parent("ul").prevAll().removeClass("border_on"); 
		$(this).parent("ul").nextAll().removeClass("border_on");
		$(this).parent("ul").prevAll().addClass("border_off"); 
		$(this).parent("ul").nextAll().addClass("border_off"); 
		
		$(this).addClass("click");
		$(this).prevAll().removeClass("over");
		$(this).prevAll().removeClass("click");
		$(this).nextAll().removeClass("over");
		$(this).nextAll().removeClass("click");
		
		$(this).parent().parent().find("ul.border_off li").removeClass("over");
		$(this).parent().parent().find("ul.border_off li").removeClass("click");

	});
}
function parent3_Clayer(obj){
	$(obj).css("cursor","pointer");
	$(obj).parent().parent().parent().css("display","none");
	$(obj).parent().parent().parent().parent().find("ul.border_on li").removeClass("over");
	$(obj).parent().parent().parent().parent().find("ul.border_on li").removeClass("click");
}
function parent2_Clayer(obj){
	$(obj).css("cursor","pointer");
	$(obj).parent().parent().css("display","none");
	$(obj).parent().parent().parent().find("ul.border_on li").removeClass("over");
	$(obj).parent().parent().parent().find("ul.border_on li").removeClass("click");
}
function parent1_Clayer(obj){
	$(obj).css("cursor","pointer");
	$(obj).parent().css("display","none");
	$(obj).parent().parent().find("ul.border_on li").removeClass("over");
	$(obj).parent().parent().find("ul.border_on li").removeClass("click");
}

//-----------------------------------------------------
/*****        SHOW  전용      *****/
//-----------------------------------------------------
function show_layer(SH,idx){
	SH_div = document.getElementById(SH + idx); 
		SH_div.style.display="";
}
//-----------------------------------------------------
/*****         HIDE  전용      *****/
//-----------------------------------------------------
function closed_layer(SH,idx){
	SH_div = document.getElementById(SH + idx); 
		SH_div.style.display="none";
}

//pop
function pwin(name, url, left, top, width, height, toolbar, menubar, statusbar, scrollbar, resizable)
{
  toolbar_str = toolbar ? 'yes' : 'no';
  menubar_str = menubar ? 'yes' : 'no';
  statusbar_str = statusbar ? 'yes' : 'no';
  scrollbar_str = scrollbar ? 'yes' : 'no';
  resizable_str = resizable ? 'yes' : 'no';

  if(left < 0) left = (screen.width - 400) / 2;
  if(top < 0) top = (screen.height - 400) / 3;

  win = window.open(url, name, 'left='+left+',top='+top+',width='+width+',height='+height+',toolbar='+toolbar_str+',menubar='+menubar_str+',status='+statusbar_str+',scrollbars='+scrollbar_str+',resizable='+resizable_str);
  win.focus();
}

//이미지 점선없애기 onfocus

function bluring(){ 
if(event.srcElement.tagName=="A"||event.srcElement.tagName=="IMG") document.body.focus(); 
} 
document.onfocusin=bluring;

//왼쪽 롤링배너

function initMoving(target, position, topLimit, btmLimit) {
 if (!target)
  return false;

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
 } else if (typeof(document.documentElement.scrollTop) == "number") {
  obj.getTop = function() {
   return Math.max(document.documentElement.scrollTop, document.body.scrollTop);
  }
 } else {
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
 } else {
  obj.getHeight = function() {
   return 100;
  }
 }

 obj.move = setInterval(function() {
  if (obj.initTop > 0) {
   pos = obj.getTop() + obj.initTop;
  } else {
   pos = obj.getTop() + obj.getHeight() + obj.initTop;
   //pos = obj.getTop() + obj.getHeight() / 2 - 15;
  }

  if (pos > obj.bottomLimit)
   pos = obj.bottomLimit;
  if (pos < obj.topLimit)
   pos = obj.topLimit;

  interval = obj.top - pos;
  obj.top = obj.top - interval / 3;
  obj.style.top = obj.top + "px";
 }, 30)
}

