<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
request.setAttribute("Pn", "5");
request.setAttribute("Sn", request.getParameter("bdId"));
%>
<%@ include file="../_include/subHeader.jspf" %>

	<h3 class="title1">
		WOORIKIRI <span><%=request.getParameter("bdId") %></span>
	</h3>
	
	

<%@ include file="../_include/subFooter.jspf" %>
