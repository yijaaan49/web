package com.woorikiri.front.moim.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.woorikiri.common.mybatis.DBService;
import com.woorikiri.front.moim.FreeVO.BoardFileVO;
import com.woorikiri.front.moim.vo.MoimVO;

public class MoimDAO { //모임 전체 목록 조회
	public static int insertList(MoimVO vo) {
		SqlSession ss = DBService.getFactory().openSession(true);
		int result = ss.insert("moim.createMoim", vo);
		ss.close();
		return result;
	}
	
	public static int FileinsertList(BoardFileVO fvo) {
		SqlSession ss = DBService.getFactory().openSession(true);
		int result = ss.insert("moim.Filelist", fvo);
		ss.close();
		return result;
	}
	
	
	
	public static MoimVO oneList(String idx) {
		SqlSession ss = DBService.getFactory().openSession(true);
		MoimVO vo = ss.selectOne("moim.one", idx);
		ss.close();
		return vo;
	}
	
	public static int oneFile(String idx) {
		SqlSession ss = DBService.getFactory().openSession(true);
		int result = ss.selectOne("moim.selectFile", idx);
		ss.close();
		return result;
	}
	
	
	
	public static BoardFileVO oneFileList(MoimVO vo) {
		SqlSession ss = DBService.getFactory().openSession(true);
		BoardFileVO fvo = ss.selectOne("moim.fileOne", vo);
		ss.close();
		return fvo;
	}
	
	/* vo 겟 리스트 메소드 생성 (이순용)*/
	public static List<MoimVO> getList() {
		SqlSession ss = DBService.getFactory().openSession(true);
		List<MoimVO> list = ss.selectList("moim.moimList");
		ss.close();
		return list;
	}
	
	/* vo 겟 리스트 메소드 생성 (이순용) 페이징 처리에 표시할 게시물 목록*/
	public static List<MoimVO> getList(Map<String, Integer> map) {
		SqlSession ss = DBService.getFactory().openSession(true);
		List<MoimVO> list = ss.selectList("moim.list", map);
		ss.close();
		return list;
	}
	
	/* vo 겟 리스트 메소드 생성 (이순용) 페이징 처리에 표시할 게시물 목록*/
	public static List<BoardFileVO> getFileList(Map<String, Integer> map) {
		SqlSession ss = DBService.getFactory().openSession(true);
		List<BoardFileVO> Filelist = ss.selectList("moim.Filelist", map);
		ss.close();
		return Filelist;
	}
	
	
	/* vo 겟 토탈카운트 메소드 생성 (이순용) 전체 게시글 조회*/
	public static int getTotalCount() {
		SqlSession ss = DBService.getFactory().openSession(true);
		int totalCount = ss.selectOne("moim.totalCount");
		ss.close();
		return totalCount;
	}
	
	/* vo 겟 원리스트 (이순용) 상세페이지 상세정보 추출하기 위한 정보 담기*/
	public static MoimVO getOneList(String moimSq) {
		SqlSession ss = DBService.getFactory().openSession(true);
		MoimVO vo = ss.selectOne("moim.one", moimSq);
		ss.close();
		return vo;
	}
	/* DAO 업데이트 리스트 추가 (이순용) 상세페이지 상세정보 추출하기 위한 정보 담기*/
	public static int updateList(MoimVO vo) {
		SqlSession ss = DBService.getFactory().openSession(true);
		int result = ss.update("moim.modifyMoim", vo);
		ss.close();
		return result;
	}
	/* DAO 업데이트 파일 리스트 추가 (이순용) 상세페이지 상세정보 추출하기 위한 정보 담기*/
	public static int updateFileList(BoardFileVO fvo) {
		SqlSession ss = DBService.getFactory().openSession(true);
		int result = ss.update("moim.modifyFileMoim", fvo);
		ss.close();
		return result;
	}
	
	
	
	/* DAO 딜리트 추가(이순용) 모임 삭제*/
	public static int DeleteMoim(String sq) {
		SqlSession ss = DBService.getFactory().openSession(true);
		int result = ss.delete("moim.delete_ok", sq);
		ss.close();
		return result;
	}
	
	
	
}
