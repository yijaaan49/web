package com.bc.frontcontroller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bc.model.dao.DAO;
import com.bc.model.vo.EmployeeVO;

//@WebServlet("/MyController")
public class MyController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//요청에 대한 처리
		String type = request.getParameter("type");
		if("all".equals(type)) {
			System.out.println(">> all : 전체 목록 조회");
			List<EmployeeVO> list = DAO.getList();
			request.setAttribute("list", list);
			request.getRequestDispatcher("list.jsp").forward(request, response);
			
		} else if("dept".equals(type)) {
			request.getRequestDispatcher("dept.jsp").forward(request, response);
			
		} else if("deptList".equals(type)) {
			String deptno = request.getParameter("deptno");
			List<EmployeeVO> list = DAO.getDept(deptno);
			request.setAttribute("d_list", list);
			request.getRequestDispatcher("deptList.jsp").forward(request, response);
			
		} else if("fullname".equals(type)) {
			request.getRequestDispatcher("fullname.jsp").forward(request, response);
			
		} else if("fullnameList".equals(type)) {
			String fullname = request.getParameter("fullname");
			List<EmployeeVO> list = DAO.getFullname(fullname);
			request.setAttribute("f_list", list);
			request.getRequestDispatcher("fullnameList.jsp").forward(request, response);
			
		} else if("search".equals(type)) {
			String idx = request.getParameter("idx");
			String keyword = request.getParameter("keyword");
			System.out.println("idx: " + idx);
			System.out.println("keyword: " + keyword);
			
			if(keyword == null || keyword.equals("")) {
				request.getRequestDispatcher("search.jsp").forward(request, response);
			} else {
				List<EmployeeVO> list = DAO.getSearch(idx, keyword);
				System.out.println("list: " + list);						

				String title = "";
				switch (idx) {
					case "0": title = "사번"; break;
					case "1": title = "이름"; break;
					case "2": title = "직종"; break;
					case "3": title = "부서"; break;				
				}
				
				request.setAttribute("s_list", list);
				request.setAttribute("title", title);
				
				request.getRequestDispatcher("searchList.jsp").forward(request, response);
			}
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		doGet(request, response);
	}

}
