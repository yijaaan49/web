package com.woorikiri.common.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.woorikiri.front.board.dao.BoardDAO;
import com.woorikiri.front.board.vo.BoardVO;

public class BoardWriteComm implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String bdId = request.getParameter("bdId");
		request.setAttribute("bdId", bdId);
		
		
		return "boardWrite.jsp";
	}

}
