package com.woorikiri.common.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.woorikiri.front.board.dao.BoardDAO;
import com.woorikiri.front.board.vo.BoardVO;

public class BoardWriteProcComm implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String wrSubject = request.getParameter("wrSubject");
		String wrContent = request.getParameter("wrContent");
		String wrNm = request.getParameter("wrNm");
		String wrId = request.getParameter("wrId");
		String wrNick = request.getParameter("wrNick");
		String wrPwd = request.getParameter("wrPwd");
		String bdId = request.getParameter("bdId");
		int memNo = Integer.parseInt(request.getParameter("memNo"));
		
		
		BoardVO vo = new BoardVO();
		vo.setWrSubject(wrSubject);
		vo.setWrContent(wrContent);
		vo.setWrNm(wrNm);
		vo.setWrId(wrId);
		vo.setWrNick(wrNick);
		vo.setWrPwd(wrPwd);
		vo.setBdId(bdId);
		vo.setMemNo(memNo);
		
		
		BoardDAO.insert(vo);
		
		return "boardList";
	}

}
