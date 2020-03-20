package com.bc.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bc.dao.DAO;
import com.bc.mybatis.GuestbookVO;

public class DeleteCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		GuestbookVO vo = (GuestbookVO)session.getAttribute("guestbookVO");
		String idx = vo.getIdx();		
		
		DAO.deleteList(idx);
		return "list.jsp";
	}

}
