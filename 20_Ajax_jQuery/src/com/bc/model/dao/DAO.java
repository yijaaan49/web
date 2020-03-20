package com.bc.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.bc.model.vo.MembersVO;
import com.bc.mybatis.DBService;

public class DAO {
	public static List<MembersVO> getList(){
		SqlSession ss = DBService.getFactory().openSession(true);
		List<MembersVO> list = ss.selectList("all");
		ss.close();
		return list;
	}
	
	public static int getCnt(String id) {
		SqlSession ss = DBService.getFactory().openSession(true);
		int result = ss.selectOne("cnt", id);
		ss.close();
		return result;
	}
}
