package com.woorikiri.common.command;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.woorikiri.common.command.Command;
import com.woorikiri.route.board.dao.BoardDAO;
import com.woorikiri.route.board.vo.BoardVO;

public class BoardAnswerComm implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		int groupNo = Integer.parseInt(request.getParameter("groupNo"));
		int groupThread = Integer.parseInt(request.getParameter("groupThread"));  
		int groupSno = Integer.parseInt(request.getParameter("groupSno"));

		int writerNo = Integer.parseInt(request.getParameter("answerManagerNo"));
		String title = request.getParameter("answerSubject");
		String content = request.getParameter("answerContent");
		
		// 답글은 일단 groupThread, groupSno 을 증가
		// 3 1 1
		groupThread ++;
		groupSno ++;
		
		// DB는 groupNo, groupSno 사용 해서 업데이트를 함 
		Map<String,Integer> map = new HashMap<String,Integer>();
		map.put("groupNo", groupNo);
		map.put("groupSno", groupSno);

		BoardDAO.getUpdateGroupSno(map); //groupSno 일괄 업데이트 : 같거나 큰 번호 1씩 증가
		
		BoardVO vo = new BoardVO();
		vo.setAnswerManagerNo(writerNo);
		vo.setAnswerSubject(title);
		vo.setAnswerContent(content);
		vo.setGroupNo(groupNo);
		vo.setGroupThread(groupThread);
		vo.setGroupSno(groupSno);

		
		BoardDAO.getAnswerInsert(vo);
		response.sendRedirect("list.jsp");
		
		return "list.jsp";
	}

}
