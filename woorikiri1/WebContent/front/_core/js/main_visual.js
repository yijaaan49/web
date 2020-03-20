$(function(){

	var tg=document.getElementById("imgSet");
	var len=tg.children.length;
	

	imgno=0;
	
	$(".vprev").mouseover(function(){
		clearInterval(timer);
	});
	$(".vprev").mouseout(function(){
		timer=setInterval(timerHandler,5000);
	});
	$(".vprev").click(function(){
		clickHandler("l");
	});			
	
	$(".vnext").mouseover(function(){
		clearInterval(timer);
	});
	$(".vnext").mouseout(function(){
		timer=setInterval(timerHandler,5000);
	});
	$(".vnext").click(function(){
		clickHandler("r");
	});

	function clickHandler(str)
	{
		if(str=="l")
		{
			if(imgno==0){
				imgno=len-1;
			}else{
				imgno--;	
			}
			$(".vlist li:eq("+imgno+")").addClass("on").siblings().removeClass("on");
			$(".vthum li:eq("+imgno+")").addClass("on").siblings().removeClass("on");
		}else{
			if(imgno==len-1){
				imgno=0
			}else{
				imgno++	
			}
			$(".vlist li:eq("+imgno+")").addClass("on").siblings().removeClass("on");
			$(".vthum li:eq("+imgno+")").addClass("on").siblings().removeClass("on");
		}
	}
	
	timer=setInterval(timerHandler,5000);

	function timerHandler()
	{
		clickHandler("r")
	}
	

	$(".vthum li").click(function(){
		thumNum = $(".vthum li").index($(this));
		$(this).addClass("on").siblings().removeClass("on");
		$(".vlist li:eq("+thumNum+")").addClass("on").siblings().removeClass("on");
		imgno = thumNum ;

	})

	$(".vthum li").hover(function(){
		clearInterval(timer);
	},function(){
		 timer=setInterval(timerHandler,5000);
	})

	

})
