package com.woorikiri.front.member.dao;


import org.apache.ibatis.session.SqlSession;

import com.woorikiri.common.mybatis.DBService;
import com.woorikiri.front.member.vo.MemberVO;

public class MemberDAO {
	
	
	//아이디 중복체크
	public static int getCnt(String id) {
		SqlSession ss = DBService.getFactory().openSession(true);
		int result = ss.selectOne("member.cnt", id);
		ss.close();
		return result;
	}
	
	//회원가입 제출
	public static int insertRegister(MemberVO vo) {
		SqlSession ss = DBService.getFactory().openSession(true);
		int result = ss.insert("member.register", vo);
		ss.close();
		return result;
	}
}
