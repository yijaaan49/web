package com.woorikiri.common.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.woorikiri.front.moim.dao.MoimDAO;
import com.woorikiri.front.moim.vo.MoimVO;

public class MoimDelComm implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		MoimVO vo = (MoimVO)session.getAttribute("MoimVO");
		System.out.println(vo);
		String idx = vo.getMoimSq();
		
		MoimDAO.DeleteMoim(idx);
		return "moimList.jsp";
	}

}
