package com.woorikiri.common.command;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.woorikiri.common.mybatis.DBService;
import com.woorikiri.front.moim.dao.MoimDAO;
import com.woorikiri.front.moim.vo.MoimVO;

public class ListComm implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		List<MoimVO> list = MoimDAO.getList();
		
		request.setAttribute("moimList", list);
		
		return "moimList.jsp";
	}

}
