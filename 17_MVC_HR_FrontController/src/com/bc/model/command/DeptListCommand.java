package com.bc.model.command;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bc.model.dao.DAO;
import com.bc.model.vo.EmployeeVO;

public class DeptListCommand implements Command{

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String deptno = request.getParameter("deptno");
		List<EmployeeVO> list = DAO.getDept(deptno);
		request.setAttribute("d_list", list);
		return "deptList.jsp";
	}
	
}
