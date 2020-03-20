package com.woorikiri.front.moim.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.woorikiri.common.mybatis.DBService;
import com.woorikiri.front.moim.vo.MoimVO;

public class MoimDAO { //모임 전체 목록 조회
	public static List<MoimVO> getList() {
		SqlSession ss = DBService.getFactory().openSession(true);
		List<MoimVO> list = ss.selectList("list");
		ss.close();
		return list;
	}
	
	public static List<MoimVO> getDept(String moimno) {
		SqlSession ss = DBService.getFactory().openSession(true);
		List<MoimVO> list = ss.selectList("moimList", moimno);
		ss.close();
		return list;
	}
	
	public static MoimVO getDetail(String moimCd) {
		SqlSession ss = DBService.getFactory().openSession(true);
		MoimVO vo = ss.selectOne("detailList", moimCd);
		ss.close();
		return vo;
	}
	
	public static List<MoimVO> getSearch(String sq, String keyword){
		SqlSession ss = DBService.getFactory().openSession(true);
		Map<String, String> map = new HashMap<>();
		map.put("sq", sq );
		map.put("keyword", keyword);
		List<MoimVO> list = ss.selectList("search", map);
		ss.close();
		return list;
	}
	
	public static List<MoimVO> getUpdate(String sq) {
		SqlSession ss = DBService.getFactory().openSession(true);
		List<MoimVO> list = ss.selectList("sq", sq);
		ss.close();
		return list;
	}
	public static List<MoimVO> getInsert(String sq) {
		SqlSession ss = DBService.getFactory().openSession(true);
		List<MoimVO> list = ss.selectList("sq", sq);
		ss.close();
		return list;
	}
	public static List<MoimVO> getDelete(String sq) {
		SqlSession ss = DBService.getFactory().openSession(true);
		List<MoimVO> list = ss.selectList("sq", sq);
		ss.close();
		return list;
	}
}
