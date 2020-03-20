package com.woorikiri.common.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.woorikiri.common.command.Command;
import com.woorikiri.route.board.dao.BoardDAO;
import com.woorikiri.route.board.vo.BoardVO;

public class BoardWriteComm implements Command { 
	
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String wrId = request.getParameter("wrId");
		String wrSubject = request.getParameter("wrSubject");
		String wrContent = request.getParameter("wrContent");
		String wrPwd = request.getParameter("wrPwd");
		
		BoardVO vo = new BoardVO();
		vo.setWrId(wrId);
		vo.setWrSubject(wrSubject);
		vo.setWrContent(wrContent);
		vo.setWrPwd(wrPwd);
		
		BoardDAO.insert(vo);
		
		return "list.jsp";
	}

}
