package com.woorikiri.front.board.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.woorikiri.common.mybatis.DBService;
import com.woorikiri.front.board.vo.FaqVO;


public class FaqDAO { //qna 전체 게시글 불러오기

	public static List<FaqVO> selectPlaceFaq() {
		SqlSession ss = DBService.getFactory().openSession(true);
		List<FaqVO> list = ss.selectList("getPlaceList");
		ss.close();
		return list;
	}
	public static List<FaqVO> selectAll() {
		SqlSession ss = DBService.getFactory().openSession(true);
		List<FaqVO> list = ss.selectList("getAll");
		ss.close();
		return list;
	}
	
}
