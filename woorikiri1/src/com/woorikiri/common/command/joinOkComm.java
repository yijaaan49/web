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

public class joinOkComm implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int isInsert = 0; // insert 성공여부
		
		String memNm 			= request.getParameter("m_name"); //이름
		String memNick 			= request.getParameter("m_nick"); //닉네임
		String memId 			= request.getParameter("m_id"); //아이디
		String memPw 			= request.getParameter("m_pwd"); //비밀번호
		String memMobile		= request.getParameter("m_phone1")+"-"+request.getParameter("m_phone2")+"-"+request.getParameter("m_phone3"); //핸드폰
		String memZoneCode		= request.getParameter("m_addr"); //우편번호
		String memAddress 		= request.getParameter("m_addr2"); //주소
		String memAddressSub	= request.getParameter("m_addr3"); //상세주소
		String memBirth 		= request.getParameter("birth1")+"-"+request.getParameter("birth2")+"-"+request.getParameter("birth3"); //생년월일
		String memEmail			= request.getParameter("email1")+"@"+request.getParameter("email2");
		String memFavorite		= request.getParameter("favoritechk");  //회원관심분야
		String memSex			= request.getParameter("m_sex");  //성별
		
		String maillingFl		= request.getParameter("agree2");  //성별
		String smsFl			= request.getParameter("agree3");  //성별
		
		if(maillingFl.isEmpty()) {
			maillingFl = "F";
		}
		
		if(smsFl.isEmpty()) {
			smsFl = "F";
		}
		
		
		System.out.println(memNm);
		System.out.println(memNick);
		System.out.println(memId);
		System.out.println(memPw);
		System.out.println(memMobile);
		System.out.println(memZoneCode);
		System.out.println(memAddress);
		System.out.println(memAddressSub);
		System.out.println(memBirth);
		System.out.println(memEmail);
		System.out.println(memFavorite);
		System.out.println(memSex);
		System.out.println(maillingFl);
		System.out.println(smsFl);
		
		MemberVO vo = new MemberVO();
		vo.setMemId(memId);  				//회원 아이디
		vo.setMemNm(memNm);  				//회원 이름
		vo.setMemNick(memNick);  				//회원 이름
		vo.setMemPw(memPw);  				//회원 비밀번호
		vo.setMemMobile(memMobile);  		//회원 핸드폰번호
		vo.setMemZoneCode(memZoneCode); 	//회원 주소-우편번호
		vo.setMemAddress(memAddress);  		//회원 기본주소
		vo.setMemAddressSub(memAddressSub); //회원 상세주소
		vo.setMemBirth(memBirth);  			//회원 생년월일
		vo.setMemEmail(memEmail);  			//회원 이메일
		vo.setMemFavorite(memFavorite); 	//회원 관심분야
		vo.setMemGender(memSex);  			//회원 성별
		vo.setMaillingFl(memSex); //메일수신
		vo.setSmsFl(memSex); //SMS수신
		
		//관리자측 정보
		vo.setMemRegIp(request.getRemoteAddr());	//가입아이피
		vo.setMemRegType("pc");						//회원가입타입 pc,mobile
		vo.setMemBlockFl("F");						//탈퇴여부
		vo.setMemLeaveFl("F");						//차단여부
		vo.setPrivateOpenFl("T");					//정보공개여부
		
		
		
		//회원 정보 insert
		isInsert = MemberDAO.insertRegister2(vo);
		
		//1일때는 insert 성공
		System.out.println(isInsert);
		
		Map<String, String> map = new HashMap<>();
		map.put("memId", memId);
		
		//회원의 마지막 로그인
		MemberDAO.updateLastLogin(map);
		
		HttpSession session = request.getSession(true);
		
		session.setAttribute("USER", vo);
		
		return "../../Frontcontroller?type=main";
		/*
		Map<String, String> getLoginCheck = new HashMap();
		
		getLoginCheck.put("memId",request.getParameter("r_id"));
		getLoginCheck.put("memPw",request.getParameter("r_pwd"));
		
		MemberVO mem = MemberDAO.getOneMember(getLoginCheck);
		
		HttpSession session = request.getSession(true);
		
		session.setAttribute("USER", mem);
		
		return "Frontcontroller?type=main";
		*/
	}

}
