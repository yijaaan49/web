package com.woorikiri.common.command;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.woorikiri.front.board.dao.BoardDAO;
import com.woorikiri.front.board.dao.BoardMemoDAO;
import com.woorikiri.front.board.vo.BoardMemoVO;
import com.woorikiri.front.board.vo.BoardVO;


public class BoardDetailComm implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
	    
		int sno = Integer.parseInt(request.getParameter("sno"));
	    String cPage = request.getParameter("cPage");
	    
	    BoardVO vo = BoardDAO.getOne(sno); 
	    
	    HttpSession session = request.getSession();
	    session.setAttribute("vo", vo);
	    
	    System.out.println("vo: " + vo);
	    
	    request.setAttribute("cPage", cPage);
	    
	    //댓글의 존재여부 확인
	    
	    int isComment = BoardMemoDAO.getOneCnt(sno);
	    
	    String bdId = request. getParameter("bdId");
	    
	    if(isComment > 0) {
	    	//댓글 조회
		    Map<String, String> map = new HashMap<>();
		    map.put("boardId", bdId);
		    map.put("boardSno", request.getParameter("sno"));
		    
		    List<BoardMemoVO> comtList = BoardMemoDAO.getComtList(map);
		    
		    request.setAttribute("comtList", comtList);
			
		    return "boardDetail.jsp";
		    
	    } else {
	    	
	    	return "boardDetail.jsp";
	    }
	}

}
