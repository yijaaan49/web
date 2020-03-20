package com.bc.model.command;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bc.model.dao.DAO;
import com.bc.model.vo.EmployeeVO;

public class ListCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		List<EmployeeVO> list = DAO.getList();
		request.setAttribute("list", list);
		return "list.jsp";
	}

}
