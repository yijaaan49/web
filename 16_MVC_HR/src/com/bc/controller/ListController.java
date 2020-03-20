package com.bc.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bc.model.dao.DAO;
import com.bc.model.vo.EmployeeVO;

@WebServlet("/list")
public class ListController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println(">> doGet() start ======");
		
		process(request, response);
		
		System.out.println(">> doGet() end ======");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println(">> doPost() 시작 ========");
		request.setCharacterEncoding("utf-8");
		doGet(request, response);
		
		System.out.println(">> doPost() 종료 ========");
	}
	
	private void process(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println(">> process() 시작: 요청작업에 대한 처리");
		
		//요청 받은 작업에 대한 처리(HR 유저의 employees 테이블 정보 조회)
		System.out.println("DB에서 데이터 가져와서 list.jsp로 전달");
		
		//DB연결하고 전체 데이터 가져와서 응답 페이지에 전달
		//1. DB연결하고 전체 데이터 가져와서(DAO)
		List<EmployeeVO> list = DAO.getList();
		
		//2. 응답페이지에 전달(request 객체에 속성값 저장)
		request.setAttribute("list", list);
		
		//응답페이지(list.jsp) 지정하고 페이지 전환(포워딩)
		request.getRequestDispatcher("list.jsp").forward(request, response);
		
		System.out.println(">> process() 종료: 요청작업에 대한 처리");
	}

}










