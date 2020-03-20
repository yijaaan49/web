package com.woorikiri.common.command;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.woorikiri.front.board.dao.BoardDAO;
import com.woorikiri.front.board.vo.BoardVO;

public class BoardModifyProcComm implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
	
		//게시글 수정
		int sno = Integer.parseInt(request.getParameter("sno"));
		String wrSubject = request.getParameter("wrSubject");
		String wrContent = request.getParameter("wrContent");
		
		//수정된 리스트 다시 불러오기 위한 데이터
		String bdId = request.getParameter("bdId");
		String cPage = request.getParameter("cPage");
		
		BoardVO vo = new BoardVO();
		vo.setSno(sno);
		vo.setWrSubject(wrSubject);
		vo.setWrContent(wrContent);
		
		BoardDAO.update(vo);
		
		return "../../Frontcontroller?type=board&work=list&bdId="+bdId+"&cPage="+cPage;		
	}

}
