package com.woorikiri.front.member.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.woorikiri.common.mybatis.DBService;
import com.woorikiri.front.member.vo.MemberVO;

public class MemberDAO {
	
	public static List<MemberVO> getMemberList(){
		SqlSession ss = DBService.getFactory().openSession(true);
		List<MemberVO> list = ss.selectList("list");
		ss.close();
		return list;
		
	}

	//아이디 중복체크
	public static int getCnt(String memId) {
		SqlSession ss = DBService.getFactory().openSession(true);
		int result = ss.selectOne("member.cnt", memId);
		ss.close();
		return result;
	}
	
	public static int getEmailCnt(String memEmail) {
		SqlSession ss = DBService.getFactory().openSession(true);
		int result = ss.selectOne("member.isEmail", memEmail);
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
	
	//회원가입 제출2 - 전성용 추가
	public static int insertRegister2(MemberVO vo) {
		SqlSession ss = DBService.getFactory().openSession(true);
		int result = ss.insert("member.register", vo);
		
		System.out.println("insert 결과"+result);
		ss.commit();
		
		ss.close();
		return result;
	}
	
	public static int updateLastLogin(Map map) {
		SqlSession ss = DBService.getFactory().openSession(true);
		int result = ss.update("member.lastLogin", map);
		
		System.out.println("update 결과"+result);
		ss.commit();
		
		ss.close();
		return result;
	}
	
	//로그인
	public static MemberVO getOneMember(Map<String, String> map) {
		SqlSession ss = DBService.getFactory().openSession(true);
		MemberVO vo = ss.selectOne("member.one", map);
		ss.close();
		return vo;
	}
	
}
