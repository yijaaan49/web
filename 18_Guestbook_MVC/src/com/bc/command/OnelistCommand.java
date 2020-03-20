package com.bc.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bc.dao.DAO;
import com.bc.mybatis.GuestbookVO;

public class OnelistCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String idx = request.getParameter("idx");
		GuestbookVO vo = DAO.oneList(idx);
		request.setAttribute("guestbookVO", vo);
		HttpSession session = request.getSession();
		session.setAttribute("guestbookVO", vo);
		return "onelist.jsp";
	}

}
