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

@WebServlet("/fullnameList")
public class FullnameListController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//전달받은 파라미터 값(성명: fullname) 추출
		String fullname = request.getParameter("fullname");
		
		//DB에서 해당 성명과 일치하는 직원 조회(DAO 사용)
		List<EmployeeVO> list = DAO.getFullname(fullname);
		
		//조회된 데이터를 응답 페이지(deptList.jsp)에서 사용되도록 속성에 저장(속성명: f_list)
		request.setAttribute("f_list", list);
		
		//응답 페이지(fullnameList.jsp)로 응답 위임처리
		request.getRequestDispatcher("fullnameList.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		doGet(request, response);
	}

}
