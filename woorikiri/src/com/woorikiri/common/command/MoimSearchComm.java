package com.woorikiri.common.command;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.woorikiri.front.moim.dao.MoimDAO;
import com.woorikiri.front.moim.vo.MoimVO;

public class MoimSearchComm implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String sq = request.getParameter("sq");
		String keyword = request.getParameter("keyword");
		System.out.println("sq: " + sq + ", keyword: " + keyword);
		
		if(keyword == null || keyword.equals("")) {
			return "moimSearch.jsp";
		} else {
			//List<MoimVO> list = moimDAO.getSearch(sq, keyword);
		//	System.out.println("list: " + list);
		
		String title = "";
		switch(sq) {
		case "0" : title = "코드"; break;
		case "1" : title = "이름"; break;
		case "2" : title = "태그"; break;
		case "3" : title = "지역"; break;
		case "4" : title = "생성날짜"; break;
		}
		
		//request.setAttribute("list", list);
		request.setAttribute("title", title);
		
		return "moimSearch.jsp";
		}
	}
}
