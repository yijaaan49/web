package com.woorikiri.front.board.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.woorikiri.common.mybatis.DBService;
import com.woorikiri.front.board.vo.BoardMemoVO;
import com.woorikiri.front.board.vo.BoardVO;

public class BoardMemoDAO {
	
	//전체 게시글의 개수(페이징 처리위해)
	public static int getTotalCount(String bdId) {
		SqlSession ss = DBService.getFactory().openSession(true);
		int result = ss.selectOne("board.totalCount", bdId);
		ss.close();
		return result;	
	}
	
	//표시할 게시글 조회(페이징 처리위해)
	public static List<BoardVO> showList(Map<String, String> map){
		SqlSession ss = DBService.getFactory().openSession(true);
		List<BoardVO> list = ss.selectList("board.showList", map);
		ss.close();
		return list;
	}
	
	//댓글 존재여부 확인
	public static int getOneCnt(int sno) {
		SqlSession ss = DBService.getFactory().openSession(true);
		int result = ss.selectOne("board.oneCount", sno);
		ss.close();
		return result;
	}
	
	//댓글 조회
	public static List<BoardMemoVO> getComtList(Map<String, String> map) {
		SqlSession ss = DBService.getFactory().openSession(true);
		List<BoardMemoVO> list = ss.selectList("board.comtList", map);
		ss.close();
		return list;
	}
	
	//댓글 입력
	public static int insertComt(BoardMemoVO vo) {
		SqlSession ss = DBService.getFactory().openSession(true);
		int result = ss.insert("comtWrite", vo);
		ss.close();
		return result;
	}

	public static int deleteComt(int sno) {
		SqlSession ss = DBService.getFactory().openSession(true);
		int result = ss.delete("comtDel", sno);
		ss.close();
		return result;
	}

}
