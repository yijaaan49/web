package com.woorikiri.common;

public class SiteConstant {

	private SiteConstant() {} //인스턴스를 만들지 못하게
	
	/* 웹 경로 시작 */
	public static final String FRONT_DIR		=	"front";	//프론트 
	public static final String ROUTE_DIR		=	"route";	//관리자 
	public static final String INCLUDE_DIR		=	"_include";	//인클루드 폴더 
	
	public static final String CORE_DIR			=	"_core";	//코어
	public static final String IMG_DIR 			=	"img"; 	//이미지 폴더
	public static final String CSS_DIR 			=	"css"; 		//스타일 시트 폴더
	public static final String JS_DIR 			=	"js"; 		//스크립트 폴더
	
	public static final String DATA_DIR 		=	"data"; 	//데이타 (기본 저장)
	public static final String FILE_DIR 		=	"file"; 	//게시판에서 업로드된 파일 저장 공간 예) data/file/게시판명/파일명
	
	public static final String BBS_DIR 			=	"bbs"; 		//게시판 폴더
	public static final String MEM_DIR 			=	"member"; 	//게시판 폴더
	public static final String MOIM_DIR 		=	"moim"; 	//게시판 폴더
	public static final String MY_DIR 			=	"mypage"; 	//게시판 폴더
	public static final String SERVICE_DIR 		=	"service"; 	//게시판 폴더
	
	

	
	public static final Boolean USE_MOBILE 		=	false; 		// 접속의 모바일 유무
	
	public static final int	SEO_TITEL_WORD_CUT	= 	8;	//Seo 문자열 길이
	public static final int LINK_COUNT			=	2;	//링크 초기 갯수
	
	
}


