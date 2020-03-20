package com.woorikiri.common.command;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.woorikiri.front.moim.dao.MoimDAO;
import com.woorikiri.front.moim.vo.MoimVO;

public class MoimDetailComm implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String moimCd = request.getParameter("moimCd");
		
		MoimVO vo = MoimDAO.oneList(moimCd);
		
		request.setAttribute("detailList", vo);
		
		return "moimDetail.jsp";
	}

}
