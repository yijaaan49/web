package com.woorikiri.common.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.woorikiri.front.board.dao.BoardDAO;

public class BoardDelProcComm implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//게시글 삭제
		int sno = Integer.parseInt(request.getParameter("sno"));
				
		BoardDAO.delete(sno);
		
		//수정된 게시글 목록으로 가기위한 데이터 가져오기
		String bdId = request.getParameter("bdId");
		String cPage = request.getParameter("cPage");
		
		return "../../Frontcontroller?type=board&work=list&cPage="+cPage+"&bdId="+bdId;
	}

}
