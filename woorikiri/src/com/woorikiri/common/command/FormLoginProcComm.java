package com.woorikiri.common.command;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.woorikiri.front.member.dao.MemberDAO;
import com.woorikiri.front.member.vo.MemberVO;

public class FormLoginProcComm implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String memId = request.getParameter("memId");
		String memPw = request.getParameter("memPw");
		
		Map<String, String> map = new HashMap<>();
		map.put("memId", memId);
		map.put("memPw", memPw);
		
		//해당 id의 회원이 있는지 확인
		int memCnt = MemberDAO.getIdCnt(memId);
		request.setAttribute("memCnt", memCnt);
		System.out.println("memCnt : " + memCnt);
		
		//비밀번호 확인 
		
		if(memCnt < 1) {
			//회원 없음
			return "formLogin";
			
		} else {
			//해당 id, pw의 회원정보 가져오기
			MemberVO vo = MemberDAO.getOneMember(map);
			
			//해당 id, pw의 최종로그인 시간 변경
			MemberDAO.updateLastLogin(map);
			
			//회원정보 session에 저장
			HttpSession session = request.getSession();
			session.setAttribute("memVO", vo);
		
			return "index";
		}
		
		
	}

}
