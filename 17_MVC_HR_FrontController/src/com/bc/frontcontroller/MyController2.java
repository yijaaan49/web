package com.bc.frontcontroller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bc.model.command.Command;
import com.bc.model.command.DeptCommand;
import com.bc.model.command.DeptListCommand;
import com.bc.model.command.FullnameCommand;
import com.bc.model.command.FullnameListCommand;
import com.bc.model.command.ListCommand;
import com.bc.model.command.SearchCommand;
import com.bc.model.dao.DAO;
import com.bc.model.vo.EmployeeVO;

@WebServlet("/MyController")
public class MyController2 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String type = request.getParameter("type");
		
		Command comm = null;
		String path = "";
		
		if("all".equals(type)) {
			comm = new ListCommand();
			
		} else if("dept".equals(type)) {
			comm = new DeptCommand();
						
		} else if("deptList".equals(type)) {
			comm = new DeptListCommand();
			
		} else if("fullname".equals(type)) {
			comm = new FullnameCommand();
			
		} else if("fullnameList".equals(type)) {
			comm = new FullnameListCommand();
			
		} else if("search".equals(type)) {
			comm = new SearchCommand();
		}
		//포워딩만 함(DB작업은 각 Command에서 / 포워딩도 각 command에서 해도 됨)
		path = comm.exec(request, response);
		request.getRequestDispatcher(path).forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		doGet(request, response);
	}

}
