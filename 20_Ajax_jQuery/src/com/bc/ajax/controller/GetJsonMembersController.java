package com.bc.ajax.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bc.model.dao.DAO;
import com.bc.model.vo.MembersVO;

@WebServlet("/getJsonMembers")
public class GetJsonMembersController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();

		//DB 데이터 조회(전체)
		List<MembersVO> list = DAO.getList();
				
		//JSON 형태의 문자열 작성 후 응답처리
		/*
		{"list":[
			{
			"idx" : "idx값", 
			"name" : "name값",
			"age" : "age값",
			"addr" : "addr값",
			"regdate" : "regdate값"
			}, {}, {}, {}, ..., {}
		]}
		 */
		String result = "{\"list\":[";
		for(MembersVO vo : list) {
			result += "{";
			result += "\"idx\":\"" + vo.getIdx() + "\",";
			result += "\"name\":\"" + vo.getName() + "\",";
			result += "\"age\":\"" + vo.getAge() + "\",";
			result += "\"addr\":\"" + vo.getAddr() + "\",";
			result += "\"regdate\":\"" + vo.getRegdate() + "\"";
			result += "},";
		}
		result = result.substring(0, result.length() - 1);
		result += "]}";
		System.out.println(result);
		
		out.print(result);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		doGet(request, response);
	}

}
