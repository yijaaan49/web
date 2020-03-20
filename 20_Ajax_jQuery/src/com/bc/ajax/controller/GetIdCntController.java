package com.bc.ajax.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bc.model.dao.DAO;

@WebServlet("/Mycontroller")
public class GetIdCntController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		String id = request.getParameter("id");
		System.out.println("id: " + id);

		//DB 데이터 조회
		int idCnt = DAO.getCnt(id);
		System.out.println("idCnt: " + idCnt);
		
		//JSON 형태의 문자열 작성 후 응답처리
		String result = "{\"cnt\":" + idCnt + "}";
		out.print(result);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		doGet(request, response);
	}

}
