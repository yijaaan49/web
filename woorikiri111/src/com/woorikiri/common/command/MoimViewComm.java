package com.woorikiri.common.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.woorikiri.front.moim.FreeVO.BoardFileVO;
import com.woorikiri.front.moim.dao.MoimDAO;
import com.woorikiri.front.moim.vo.MoimVO;

public class MoimViewComm implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String idx = request.getParameter("sno");
		
		MoimVO vo = MoimDAO.oneList(idx); //MOIM SQ값 찾아오기
		System.out.println(vo);
		
		BoardFileVO fvo = MoimDAO.oneFileList(idx);//MOIM SQ값으로 파일 리스트 목록 불러오기
		System.out.println(fvo);
		
		request.getSession().setAttribute("MoimVO", vo);
		request.getSession().setAttribute("BoardFileVO", fvo);//불러온 파일을 저장
		return "moimView.jsp";
	}

}
