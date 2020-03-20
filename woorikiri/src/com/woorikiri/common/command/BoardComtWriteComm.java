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

public class BoardComtWriteComm implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int groupThread = Integer.parseInt(request.getParameter("groupThread"));
		int groupNo = Integer.parseInt(request.getParameter("groupNo"));
		String bdId = request.getParameter("bdId");
		int sno = Integer.parseInt(request.getParameter("sno"));
		String memId = request.getParameter("memId");
		String memNm = request.getParameter("memNm");
		String memNick = request.getParameter("memNick");
		String memPw = request.getParameter("memPw");
		String memo = request.getParameter("memo");
		
		
		// 댓글은 depth 증가
		groupThread ++;
				
		BoardMemoVO vo = new BoardMemoVO();
		vo.setGroupThread(groupThread);
		vo.setBoardId(bdId);
		vo.setBoardSno(sno);
		vo.setWriterId(memId);
		vo.setWriterNick(memNick);
		vo.setWriterNm(memNm);
		vo.setWriterPw(memPw);
		vo.setMemo(memo);
		vo.setGroupNo(groupNo);
		
		BoardMemoDAO.insertComt(vo);
		
		//게시글 상세보기로 돌아가기위한 설정
		HttpSession session = request.getSession();
		String cPage = request.getParameter("cPage");
		request.setAttribute("cPage", cPage);
		
		request.setAttribute("sno", sno);
		session.setAttribute("bdId", bdId);
		
		return "boardDetail";
	}

}
