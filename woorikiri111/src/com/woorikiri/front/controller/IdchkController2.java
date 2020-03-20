package com.woorikiri.front.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import com.woorikiri.front.member.dao.MemberDAO;

/*
Name : 아이디중복체크용
Author : 전성용
RegDate : 2020-01-18
*/
@WebServlet("/IdchkController2")
public class IdchkController2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=utf-8");
		
		String memId = request.getParameter("m_id");
		JSONObject retVal = new JSONObject();
		
		//정규표현식
		Pattern pattern = Pattern.compile("/^[0-9A-Za-z]{4,12}$/"); 
		Matcher match = pattern.matcher(memId); 
		boolean bool = match.matches();
		
		//DB 데이터 조회
		int idCnt = MemberDAO.getCnt(memId);
			
		
		if(idCnt > 0 ) {
			retVal.put("id", "불가능");
		}else {
			retVal.put("id", "가능");
		}
			
		String jsonStr = retVal.toJSONString();
		PrintWriter out = response.getWriter();
		
		out.print(jsonStr);
		
				
	
		/*
		StringBuffer json = new StringBuffer();
		
		String line = null;
		
		try {
	        BufferedReader reader = request.getReader();
	        while((line = reader.readLine()) != null) {
	            json.append(line);
	        }
	 
	    }catch(Exception e) {
	        System.out.println("Error reading JSON string: " + e.toString());
	    }

		JSONParser p = new JSONParser();
		*/
		

	
		
		/*
		PrintWriter out = response.getWriter();
		String id = request.getParameter("id");
		System.out.println("id: " + id);

		//DB 데이터 조회
		int idCnt = MemberDAO.getCnt(id);
		System.out.println("idCnt: " + idCnt);
		
		//JSON 형태의 문자열 작성 후 응답처리
		String result = "{\"cnt\":" + idCnt + "}";
		out.print(result);
		*/
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("utf-8");
		doGet(request, response);
	}

}
