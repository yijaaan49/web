package com.woorikiri.common.command;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.woorikiri.common.vo.PageVO;
import com.woorikiri.route.board.dao.BoardDAO;
import com.woorikiri.route.board.vo.BoardVO;

public class BoardComm implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String bdId = request.getParameter("bdId");
		
		PageVO p = new PageVO();
			// 1. 전체 게시물의 수를 구한다.
			p.setTotalRecord(BoardDAO.getTotalCount(bdId));
			
			p.setTotalPage();

			//  현재 페이지 구하기
			String cPage = request.getParameter("cPage");
			// null 아니면 의 뜻은 (처음 방문이 아니면 뜻과 같음)
			if (cPage != null) {
				p.setNowPage(Integer.parseInt(cPage));
			}

			// 3. 현재 페이지의 시작번호와 끝번호를 구하기
			p.setBegin((p.getNowPage() - 1) * p.getNumPerPage() + 1);
			p.setEnd((p.getBegin() - 1) + p.getNumPerPage());

			// 현재 페이지를 이용한 블록의 시작번호와 끝번호
			p.setBeginPage((int) (((p.getNowPage() - 1) / p.getPagePerBlock()) * p.getPagePerBlock() + 1));
			p.setEndPage(p.getBeginPage() + p.getPagePerBlock() - 1);

			// 주의 사항 ; endPage가 totalPage보다 클수 있다.
			if (p.getEndPage() > p.getTotalPage()) {
				p.setEndPage(p.getTotalPage());
			}

			// 여러개의 파라미터값을 vo와 상관없이 매개변수로 사용하는 방법 :map형식 
			Map<String, Integer> map = new HashMap<String, Integer>();
			map.put("begin", p.getBegin());
			map.put("end", p.getEnd());
			
			List<BoardVO> list = BoardDAO.showList(map);
			
			request.setAttribute("list", list);
			request.setAttribute("pvo", p);
			request.setAttribute("cPage", cPage);
	
		return "board.jsp";
	}

}
