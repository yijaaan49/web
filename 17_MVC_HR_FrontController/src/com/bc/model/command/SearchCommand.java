package com.bc.model.command;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bc.model.dao.DAO;
import com.bc.model.vo.EmployeeVO;

public class SearchCommand implements Command{

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String idx = request.getParameter("idx");
		String keyword = request.getParameter("keyword");
		System.out.println("idx: " + idx);
		System.out.println("keyword: " + keyword);
		
		if(keyword == null || keyword.equals("")) {
			return "search.jsp";
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
			
			return "searchList.jsp";
		}
	}

}
