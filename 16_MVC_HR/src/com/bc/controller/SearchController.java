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

@WebServlet("/search")
public class SearchController extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String idx = request.getParameter("idx");
		String keyword = request.getParameter("keyword");
		System.out.println("idx: " + idx);
		System.out.println("keyword: " + keyword);
		
		//단순 페이지 전환 or DB데이터 조회 처리 중 선택
		if(keyword == null || keyword.equals("")) {
			request.getRequestDispatcher("search.jsp").forward(request, response);
		} else {//DB데이터 조회 처리 후 결과페이지 이동
			//DB데이터 조회처리(idx, keyword사용)
			List<EmployeeVO> list = DAO.getSearch(idx, keyword);
			System.out.println("list: " + list);						

			//동적 검색 형태 확인
			String title = "";
			switch (idx) {
				case "0": title = "사번"; break;
				case "1": title = "이름"; break;
				case "2": title = "직종"; break;
				case "3": title = "부서"; break;				
			}
			
			//조회 데이터 응답페이지로 전달
			request.setAttribute("s_list", list);
			request.setAttribute("title", title);
			
			//응답 페이지(searchList.jsp)로 응답 위임처리
			request.getRequestDispatcher("searchList.jsp").forward(request, response);
		}
		
	}
		

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		doGet(request, response);
	}

}
