package com.woorikiri.common.command;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.woorikiri.front.board.dao.BoardMemoDAO;
import com.woorikiri.front.board.vo.BoardMemoVO;

public class BoardComtDelComm implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int sno = Integer.parseInt(request.getParameter("sno"));
		
		BoardMemoDAO.deleteComt(sno);
		
		return "boardDetail";
	}

}
