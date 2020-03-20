package com.woorikiri.common.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MoimOutComm implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String info = request.getParameter("reqSq");
		
		//int out = moimDAO.getmoimOut(info);
		
		//request.setAttribute("moimOut", out);
		
		return "moimOut.jsp";
	}

}
