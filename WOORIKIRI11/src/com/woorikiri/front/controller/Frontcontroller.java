package com.woorikiri.front.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.woorikiri.common.command.BoardComm;
//import com.woorikiri.common.command.BoardDetailComm;
//import com.woorikiri.common.command.BoardModDelComm;
//import com.woorikiri.common.command.BoardModifyComm;
//import com.woorikiri.common.command.BoardPagingComm;
//import com.woorikiri.common.command.BoardSearchComm;
import com.woorikiri.common.command.Command;
//import com.woorikiri.common.command.FormLoginComm;
//import com.woorikiri.common.command.MemRegComm;
//import com.woorikiri.common.command.MemRegFormComm;
//import com.woorikiri.common.command.MoimCreComm;
//import com.woorikiri.common.command.MoimCreFormComm;
//import com.woorikiri.common.command.MoimDelComm;
//import com.woorikiri.common.command.MoimListComm;
//import com.woorikiri.common.command.MoimModComm;
import com.woorikiri.common.command.MoimOutComm;
import com.woorikiri.common.command.MoimRegComm;
import com.woorikiri.common.command.MoimSearchComm;
//import com.woorikiri.common.command.MoimViewComm;

@WebServlet("/Frontcontroller")
public class Frontcontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//요청에 대한 처리
		String type = request.getParameter("type");
				
		System.out.println("type: " + type);
		
		Command comm = null;
		if((type).equals("formLogin")) {
			
			//로그인
			//comm = new FormLoginComm();
			
		} else if((type).equals("memRegForm")) {
		/*
		Name : 회원관리용
		Author : 이재은
		RegDate : 2020-01-13
		*/
			//회원가입폼
			//comm = new MemRegFormComm();
			
		} else if((type).equals("memReg")) {
			
			//약관페이지
			//comm = new MemRegComm();
			
		} else if((type).equals("moimReg")) {
			
			//모임가입
			comm = new MoimRegComm();
			
		} else if((type).equals("moimOut")) {
			
			//모임탈퇴
			comm = new MoimOutComm();
			
		} else if((type).equals("moimList")) {
			
			//모임전체리스트
			//comm = new MoimListComm();
			
		} else if((type).equals("moimList")) {
			
			//모임리스트-검색
			comm = new MoimSearchComm();
			
		} else if((type).equals("moimView")) {
			
			//모임상세보기
			//comm = new MoimViewComm();
			
		} else if((type).equals("moimCre")) {
			
			//모임등록폼
			//comm = new MoimCreFormComm();
			
		} else if((type).equals("moimCre")) {
			
			//모임등록
			//comm = new MoimCreComm();
			
		} else if((type).equals("moimMod")) {
			
			//모임수정
			//comm = new MoimModComm();
			
		} else if((type).equals("moimDel")) {
			
			//모임삭제
			//comm = new MoimDelComm();
			
		} else if((type).equals("board")) {
			
			String work = request.getParameter("work");
			
			if ((work).equals("list")) {
				
				//게시판리스트
				comm = new BoardComm();
				
			} else if ((work).equals("search")) {
				
				//게시판리스트-검색
				//comm = new BoardSearchComm();
				
			} else if((work).equals("detail")) {
				
				//게시판상세보기
				//comm = new BoardDetailComm();
				
			} else if((work).equals("modify")) {
				
				//게시판 수정
				//comm = new BoardModifyComm();
				
			} else if((work).equals("modDel")) {
				
				//게시글 수정삭제
				//comm = new BoardModDelComm();
				
			} 
			
		} else {
			
		}
		
		String path = comm.exec(request, response);
		
		//RequestDispatcher rd = request.getRequestDispatcher(path);
		//rd.forward(request, response);
		request.getRequestDispatcher(path).forward(request, response);
		
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		doGet(request, response);
	}

}
