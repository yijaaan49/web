package com.woorikiri.route.board.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.woorikiri.common.mybatis.DBService;
import com.woorikiri.route.board.vo.BoardVO;

public class BoardDAO {
	
	//전체 게시글의 개수(페이징 처리위해)
	public static int getTotalCount(String bdId) {
		SqlSession ss = DBService.getFactory().openSession(true);
		int result = ss.selectOne("board.totalCount", bdId);
		ss.close();
		return result;	
	}
	
	//표시할 게시글 조회(페이징 처리위해)
	public static List<BoardVO> showList(Map<String, Integer> map){
		SqlSession ss = DBService.getFactory().openSession(true);
		List<BoardVO> list = ss.selectList("board.showList", map);
		ss.close();
		return list;
	}
	
	//전체 게시글 가져오기
	public static List<BoardVO> selectAll() {
		SqlSession ss = DBService.getFactory().openSession(true);
		List<BoardVO> list = ss.selectList("board.all");
		ss.close();
		return list;	
	}
	
	//게시글 상세보기
	public static BoardVO getOne(String bdId) {
		SqlSession ss = DBService.getFactory().openSession(true);
		BoardVO vo = ss.selectOne("board.one", bdId);
		ss.close();
		return vo;
	}
	
	//게시글 입력
	public static int insert(BoardVO vo) {
		SqlSession ss = DBService.getFactory().openSession(true);
		int result = ss.insert("board.insert", vo);
		ss.close();
		return result;		
	}

	//groupSno(게시글 순서) 일괄 업데이트
	public static int getUpdateGroupSno(Map<String, Integer> map) {
		SqlSession ss = DBService.getFactory().openSession(true);
		int result = ss.insert("board.UpdateGroupSno", map);
		ss.close();
		return result;	
	}

	//답변 입력
	public static int getAnswerInsert(BoardVO vo) {
		SqlSession ss = DBService.getFactory().openSession(true);
		int result = ss.insert("board.answerInsert", vo);
		ss.close();
		return result;		
	}
}
