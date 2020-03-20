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

public class LoginProcComm implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		

		Map<String, String> getLoginCheck = new HashMap();
		
		getLoginCheck.put("memId",request.getParameter("r_id"));
		getLoginCheck.put("memPw",request.getParameter("r_pwd"));
		
		MemberVO mem = MemberDAO.getOneMember(getLoginCheck);
		
		HttpSession session = request.getSession(true);
		
		session.setAttribute("USER", mem);
		
		return "Frontcontroller?type=main";
	}

}
