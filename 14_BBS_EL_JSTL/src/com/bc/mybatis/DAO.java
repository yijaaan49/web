package com.bc.mybatis;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

public class DAO {
	
	//게시글(BBS_T)의 전체 건수 조회
	public static int getTotalCount() {
		SqlSession ss = DBService.getFactory().openSession(true);
		int totalCount = ss.selectOne("totalCount");
		ss.close();
		return totalCount;
	}
	
	//표시할 게시글 조회
	public static List<BBSVO> getList(Map<String, Integer> map){
		SqlSession ss = DBService.getFactory().openSession(true);
		List<BBSVO> list = ss.selectList("list", map);
		ss.close();
		return list;
	}
	
	//게시글 입력 처리
	public static int insert(BBSVO bvo) {
		SqlSession ss = DBService.getFactory().openSession(true);
		int result = ss.insert("insert", bvo);
		ss.close();
		return result;
	}
	
	//조회수 올리기
	public static int updateHit(int b_idx) {
		SqlSession ss = DBService.getFactory().openSession(true);
		int result = ss.update("hit", b_idx);
		ss.close();
		return result;
	}
	
	//게시글 조회하기
	public static BBSVO selectOne(int b_idx) {
		SqlSession ss = DBService.getFactory().openSession(true);
		BBSVO bvo = ss.selectOne("one", b_idx);
		ss.close();
		return bvo;
	}
	
	//댓글 조회하기
	public static List<CommVO> getCommList(int b_idx) {
		SqlSession ss = DBService.getFactory().openSession(true);
		List<CommVO> c_list = ss.selectList("commList", b_idx);
		ss.close();
		return c_list;
	}
	
	//댓글 입력하기
	public static int insertComment(CommVO cvo) {
		SqlSession ss = DBService.getFactory().openSession(true);
		int result = ss.insert("c_insert", cvo);
		ss.close();
		return result;
	}
	
	//댓글 삭제하기
	public static int deleteComment(String c_idx) {
		SqlSession ss = DBService.getFactory().openSession(true);
		int result = ss.delete("c_delete", c_idx);
		ss.close();
		return result;		
	}
}
