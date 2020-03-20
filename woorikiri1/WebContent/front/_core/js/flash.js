//-----------------------------------------------------------------------------------
// 마이크로소프트 인터넷익스플로러 액티브엑스 상호컨트롤 문제에 따른 해결 스크립트
// 디자인픽셀(designpixel.co.kr)
// 2006-04-13
//----------------------------------------------------------------------------------- 

// 인자 설명
// s: 소스파일
// d: 아이디
// m: wmode (transparent 나 opaque 등등)
// w: 소스폭
// h: 소스높이

function printcode(s, d, m, w, h){
	document.write("<object classid='clsid:D27CDB6E-AE6D-11cf-96B8-444553540000' codebase='http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,29,0' width="+w+" height="+h+" id="+d+">");
	document.write("<param name=wmode value="+m+" />");
	document.write("<param name=movie value="+s+" />");
	document.write("<param name=quality value=high />");
	document.write("<param name=menu value=false />");
	document.write("<embed src="+s+" quality=high wmode="+m+" type=\"application/x-shockwave-flash\" pluginspage=\"http://www.macromedia.com/shockwave/download/index.cgi?p1_prod_version=shockwaveflash\" width="+w+" height="+h+">");
	document.write("</embed>");
	document.write("</object>");
}


	document.createElement('article');
	document.createElement('aside');
	document.createElement('canvas');
	document.createElement('details');
	document.createElement('figure');
	document.createElement('figcaption');
	document.createElement('footer');
	document.createElement('header');
	document.createElement('hgroup');
	document.createElement('menu');
	document.createElement('nav');
	document.createElement('section');
	document.createElement('summary');