package com.bc.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bc.dao.DAO;
import com.bc.mybatis.GuestbookVO;

public class UpdateCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		GuestbookVO vo = (GuestbookVO)session.getAttribute("guestbookVO");
		System.out.println("idx : " + vo.getIdx());

		String name = request.getParameter("name");
		String subject = request.getParameter("subject");
		String content = request.getParameter("content");
		String email = request.getParameter("email");
		
		vo.setName(name);
		vo.setSubject(subject);
		vo.setContent(content);
		vo.setEmail(email);
		
		DAO.updateList(vo);
		return "onelist.jsp";
	}

}
