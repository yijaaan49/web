<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "com.woorikiri.common.SiteConstant"%>
<%
String SITE_URL 		=	"http://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath();

String FRONT_URL		= 	SITE_URL+"/"+SiteConstant.FRONT_DIR;
String ROUTE_URL		= 	SITE_URL+"/"+SiteConstant.ROUTE_DIR;

String FRONT_CORE_URL 	=	FRONT_URL+"/"+SiteConstant.CORE_DIR;

String FRONT_JS_URL 	=	FRONT_CORE_URL+"/"+SiteConstant.JS_DIR;
String FRONT_CSS_URL 	=	FRONT_CORE_URL+"/"+SiteConstant.CSS_DIR;
String FRONT_IMG_URL 	=	FRONT_CORE_URL+"/"+SiteConstant.IMG_DIR;

String ROOT_PATH 		= 	request.getSession().getServletContext().getRealPath("/") ; //서버 절대경로

String SET_DEVICE 		= 	"both";	//pc 일때는 pc, mobile때는 mobile, both는 접속기기
String MOBILE_AGENT 	= 	"phone|samsung|lgtel|mobile|[^A]skt|nokia|blackberry|BB10|android|sony";

String data_path		= request.getServletContext().getRealPath("/front/data/");
%>