package com.woorikiri.common.command;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.woorikiri.front.moim.dao.MoimDAO;
import com.woorikiri.front.moim.vo.MoimVO;

public class MainComm implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//지금 딱 이모임 DISPLAY T 266 * 390
		List<MoimVO> list = MoimDAO.getMainList();
		request.setAttribute("mainList", list);
		
		
		
		
		return "woorikiri.jsp";
	}

}
