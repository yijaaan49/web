package com.woorikiri.common.command;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.woorikiri.common.vo.PageVO;
import com.woorikiri.front.moim.dao.MoimDAO;
import com.woorikiri.front.moim.vo.MoimVO;

public class MoimRegionComm implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String zone = request.getParameter("zone");
		String str = null;
		
		/*
		if(zone=="10") {
			str = "MOIM_ADDRESS LIKE '%서울%' ";
		}else if(zone=="20") {
			str = "MOIM_ADDRESS LIKE '%인천%' OR MOIM_ADDRESS LIKE '%경기%'  ";
		}else if(zone=="30") {
			str = "MOIM_ADDRESS LIKE '%대전%' OR MOIM_ADDRESS LIKE '%충청%' OR MOIM_ADDRESS LIKE '%세종%'  ";
		}else if(zone=="40") {
			str = "MOIM_ADDRESS LIKE '%부산%' OR MOIM_ADDRESS LIKE '%울산%'  OR MOIM_ADDRESS LIKE '%경남%'  ";
		}else if(zone=="50") {
			str = "MOIM_ADDRESS LIKE '%광주%' OR MOIM_ADDRESS LIKE '%전라%'  ";
		}else if(zone=="60") {
			str = "MOIM_ADDRESS LIKE '%대구%' OR MOIM_ADDRESS LIKE '%경북%'  ";
		}else if(zone=="70") {
			str = "MOIM_ADDRESS LIKE '%강원%'  ";
		}else if(zone=="80") {
			str = "MOIM_ADDRESS LIKE '%제주%'  ";
		}
		*/
		
		PageVO p = new PageVO();
		// 1. 전체 게시물의 수를 구한다.
		p.setTotalRecord(MoimDAO.getTotalCount2(zone));
		
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
		Map<String, String> map = new HashMap<String, String>();
		map.put("begin", Integer.toString(p.getBegin()));
		map.put("end", Integer.toString(p.getEnd()));
		map.put("zone", zone);
		
		List<MoimVO> list = MoimDAO.getRegionList(map);
		
		request.setAttribute("list", list);
		request.setAttribute("pvo", p);
		request.setAttribute("cPage", cPage);	
		
		
		return "region.jsp";
	}

}
