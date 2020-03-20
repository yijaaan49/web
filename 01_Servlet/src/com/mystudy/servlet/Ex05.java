package com.mystudy.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/sungjuk")
public class Ex05 extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		
		//(실습) 전달받은 이름, 국어, 영어, 수학 점수를 받아서 성적처리
		//1. p태그를 사용해서 결과 출력
		//2. 테이블 사용해서 결과 출력
		/* 응답형식
		<< 성적처리 결과 >>
		이름 : 홍길동
		국어 : 100
		영어 : 90
		수학 : 80
		----------
		총점 : 270
		평균 : 90
		 */ 
		
		//요청값 받아오기
		String name = request.getParameter("name");
		String korS = request.getParameter("kor");
		String engS = request.getParameter("eng");
		String mathS = request.getParameter("math");
		
		//응답작성
		PrintWriter out = response.getWriter();
		out.print("<h3>&lt;&lt; 성적처리 결과 &gt;&gt;</h3>");
		out.print("<p>이름 : " + name + "</p>");
		out.print("<p>국어 : " + korS + "</p>");
		out.print("<p>영어 : " + engS + "</p>");
		out.print("<p>수학 : " + mathS + "</p>");
		out.print("---------------------");
		int kor = Integer.parseInt(korS);
		int eng = Integer.parseInt(engS);
		int math = Integer.parseInt(mathS);
		int tot = kor + eng + math;
		out.print("<p>총점 : " + tot + "</p>");
		double avg = tot*100/3/100.0;
		out.print("<p>평균 : " + avg + "</p>");
		out.print("<hr>");
		
		out.print("<table border>");
		out.print("<tr>");
		out.print("<th>이름</th>");
		out.print("<td>"+ name +"</td>");
		out.print("</tr>");
		out.print("<tr>");
		out.print("<th>국어</th>");
		out.print("<td>"+ korS +"</td>");
		out.print("</tr>");
		out.print("<tr>");
		out.print("<th>영어</th>");
		out.print("<td>"+ engS +"</td>");
		out.print("</tr>");
		out.print("<tr>");
		out.print("<th>수학</th>");
		out.print("<td>"+ mathS +"</td>");
		out.print("</tr>");
		out.print("<tr>");
		out.print("<th>총점</th>");
		out.print("<td>"+ tot +"</td>");
		out.print("</tr>");
		out.print("<tr>");
		out.print("<th>평균</th>");
		out.print("<td>"+ avg +"</td>");
		out.print("</tr>");
		out.print("</table>");
		out.print("<hr>");
		//=====================================
		
		//Map방식
		Map<String, String[]> paramMap = request.getParameterMap();
		String[] nameM = paramMap.get("name");
		String[] korM = paramMap.get("kor");
		String[] engM = paramMap.get("eng");
		String[] mathM = paramMap.get("math");
		
		out.println("이름 : " + nameM[0]);
		out.println("국어 : " + korM[0]);
		out.println("영어 : " + engM[0]);
		out.println("수학 : " + mathM[0]);
		out.println("------------------");
		out.println("<p>총점 : " + tot + "</p>");
		out.println("<p>평균 : " + avg + "</p>");
	}

}
