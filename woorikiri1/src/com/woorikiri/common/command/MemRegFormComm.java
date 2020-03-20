package com.woorikiri.common.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.woorikiri.front.member.dao.MemberDAO;
import com.woorikiri.front.member.vo.MemberVO;

public class MemRegFormComm implements Command {
	/*
	Name : 회원가입폼
	Author : 이재은
	RegDate : 2020-01-13
	*/
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String memId = request.getParameter("memId");
		String memPw = request.getParameter("memPw");
		String memNm = request.getParameter("memNm");
		String memNick = request.getParameter("memNick");
		String memGender = request.getParameter("memGender");
		String memMobile = request.getParameter("memMobile");
		String memEmail = request.getParameter("memEmail");
		String memBirth = request.getParameter("memBirth");
		String memZoneCode = request.getParameter("memZoneCode");
		String memAddress = request.getParameter("memAddress");
		String memAddressSub = request.getParameter("memAddressSub");
		String memAddressAdd = request.getParameter("memAddressAdd");
		String maillingFl = request.getParameter("maillingFl");
		String smsFl = request.getParameter("smsFl");
		String privateOpenFl = request.getParameter("privateOpenFl");
		String favorA = request.getParameter("subject");
		String favorAA = request.getParameter("contents");
		String favorAAA = request.getParameter("components");
		String memFavorite = favorA + "/" + favorAA + "/" + favorAAA;
		
		MemberVO vo = new MemberVO();
		vo.setMemId(memId);
		vo.setMemPw(memPw);
		vo.setMemNm(memNm);
		vo.setMemNick(memNick);
		vo.setMemGender(memGender);
		vo.setMemMobile(memMobile);
		vo.setMemEmail(memEmail);
		vo.setMemBirth(memBirth);
		vo.setMemZoneCode(memZoneCode);
		vo.setMemAddress(memAddress);
		vo.setMemAddressSub(memAddressSub);
		vo.setMemAddressAdd(memAddressAdd);
		vo.setMaillingFl(maillingFl);
		vo.setSmsFl(smsFl);
		vo.setPrivateOpenFl(privateOpenFl);
		vo.setMemFavorite(memFavorite);
		
		MemberDAO.insertRegister(vo);
		
		return "index.jsp";
	}

}
