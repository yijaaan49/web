package com.woorikiri.common.command;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.woorikiri.front.board.dao.FaqDAO;
import com.woorikiri.front.board.vo.FaqVO;

public class PlaceFaqComm implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		List<FaqVO> list = FaqDAO.selectPlaceFaq();
		request.setAttribute("pFaqList", list);
		
		return "placefaq.jsp";
	}

}
