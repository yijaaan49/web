package com.bc.dao;

import org.apache.ibatis.session.SqlSession;

import com.bc.mybatis.DBService;
import com.bc.mybatis.GuestbookVO;

public class DAO {
	public static int deleteList(String idx) {
		SqlSession ss = DBService.getFactory().openSession(true);
		int result = ss.delete("delete", idx);
		ss.close();
		return result;
	}
	
	public static int updateList(GuestbookVO vo) {
		SqlSession ss = DBService.getFactory().openSession(true);
		int result = ss.update("update", vo);
		ss.close();
		return result;
	}
	
	public static int insertList(GuestbookVO vo) {
		SqlSession ss = DBService.getFactory().openSession(true);
		int result = ss.insert("insert", vo);
		ss.close();
		return result;
	}
	
	public static GuestbookVO oneList(String idx) {
		SqlSession ss = DBService.getFactory().openSession(true);
		GuestbookVO vo = ss.selectOne("one", idx);
		ss.close();
		return vo;		
	}
}
