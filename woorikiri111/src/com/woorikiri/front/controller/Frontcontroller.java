package com.woorikiri.front.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.woorikiri.common.command.BoardComm;
import com.woorikiri.common.command.BoardComtDelComm;
import com.woorikiri.common.command.BoardComtWriteComm;
import com.woorikiri.common.command.BoardDelComm;
import com.woorikiri.common.command.BoardDelProcComm;
import com.woorikiri.common.command.BoardDetailComm;
import com.woorikiri.common.command.BoardModifyComm;
import com.woorikiri.common.command.BoardModifyProcComm;
import com.woorikiri.common.command.BoardWriteComm;
import com.woorikiri.common.command.BoardWriteProcComm;
import com.woorikiri.common.command.Command;
import com.woorikiri.common.command.FaqComm;
import com.woorikiri.common.command.FormLoginComm;
import com.woorikiri.common.command.InquiryComm;
import com.woorikiri.common.command.Join2Comm;
import com.woorikiri.common.command.JoinComm;
import com.woorikiri.common.command.JoinProcComm;
import com.woorikiri.common.command.LogOutComm;
import com.woorikiri.common.command.LoginComm;
import com.woorikiri.common.command.LoginProcComm;
import com.woorikiri.common.command.MainComm;
import com.woorikiri.common.command.MemRegComm;
import com.woorikiri.common.command.MemRegFormComm;
import com.woorikiri.common.command.MoimCreFormComm;
import com.woorikiri.common.command.MoimCreProcComm;
import com.woorikiri.common.command.MoimDelComm;
import com.woorikiri.common.command.MoimListComm;
import com.woorikiri.common.command.MoimModComm;
import com.woorikiri.common.command.MoimOutComm;
import com.woorikiri.common.command.MoimRegComm;
import com.woorikiri.common.command.MoimRegionComm;
import com.woorikiri.common.command.MoimSearchComm;
import com.woorikiri.common.command.MoimViewComm;
import com.woorikiri.common.command.PlaceComm;
import com.woorikiri.common.command.PlaceFaqComm;
import com.woorikiri.common.command.RegionViewComm;
import com.woorikiri.common.command.SearchComm;
import com.woorikiri.common.command.joinOkComm;

@WebServlet("/Frontcontroller")
public class Frontcontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//요청에 대한 처리
		String type = request.getParameter("type");
		String subUrl = null; 
		
		Command comm = null;
		if((type).equals("formLogin")) {
			
			//로그인
			comm = new FormLoginComm();
			subUrl = "front/member/";
		} else if((type).equals("login")) {
			/*
			Name : 회원 로그인
			Author : 전성용
			RegDate : 2020-01-17
			*/
			//회원가입폼
			subUrl = "front/member/";
			comm = new LoginComm();
			
		} else if((type).equals("joinOk")) {
			/*
			Name : 회원 로그인 처리
			Author : 전성용
			RegDate : 2020-01-17
			*/
			//회원가입폼
			subUrl = "front/member/";
			comm = new joinOkComm();
			
		} else if((type).equals("logout")) {
			/*
			Name : 회원 로그아웃
			Author : 전성용
			RegDate : 2020-01-17
			*/
			subUrl = "";
			comm = new LogOutComm();
			
			
		} else if((type).equals("join")) {
			
			/*
			Name : 회원 가입
			Author : 전성용
			RegDate : 2020-01-18
			*/
			//회원가입폼
			subUrl = "front/member/";
			comm = new JoinComm();
			
				
		} else if((type).equals("join2")) {
			
			/*
			Name : 회원 가입
			Author : 전성용
			RegDate : 2020-01-18
			*/
			//회원가입폼
			subUrl = "front/member/";
			comm = new Join2Comm();
			
				
		} else if((type).equals("joinProc")) {
			
			/*
			Name : 회원 가입 처리
			Author : 전성용
			RegDate : 2020-01-18
			*/
			//회원가입폼
			subUrl = "";
			comm = new JoinProcComm();
			
				
		} else if((type).equals("loginProc")) {
			
			/*
			Name : 회원 로그인
			Author : 전성용
			RegDate : 2020-01-17
			*/
			//회원가입폼
			subUrl = "";
			comm = new LoginProcComm();
			
				
		} else if((type).equals("memRegForm")) {
			/*
			Name : 회원관리용
			Author : 이재은
			RegDate : 2020-01-13
			*/
			//회원가입폼
			comm = new MemRegFormComm();
			
		} else if((type).equals("memReg")) {
			
			//약관페이지
			comm = new MemRegComm();
			
		} else if((type).equals("moimReg")) {
			
			//모임가입
			comm = new MoimRegComm();
			
		} else if((type).equals("moimOut")) {
			
			//모임탈퇴
			
			comm = new MoimOutComm();
			
		} else if((type).equals("moim")) {
			
			//모임전체리스트
			subUrl = "front/moim/";
			comm = new MoimListComm();
			
		} else if((type).equals("moimList")) {
			
			//모임리스트-검색
			comm = new MoimSearchComm();
			
		} else if((type).equals("moimView")) {
			
			//모임상세보기
			subUrl = "front/moim/";
			comm = new MoimViewComm();
			
		} else if((type).equals("moimCre")) {
			
			//모임등록
			subUrl = "front/moim/";
			comm = new MoimCreFormComm();
			
		} else if((type).equals("moimCreProc")) {
			
			//모임등록
			subUrl = "";
			comm = new MoimCreProcComm();
			
		} else if((type).equals("moimMod")) {
			
			//모임수정
			comm = new MoimModComm();
			
		} else if((type).equals("moimDel")) {
			
			//모임삭제
			comm = new MoimDelComm();
			
		} else if((type).equals("board")) {

			String work = request.getParameter("work");
			/*
			Name : board 경로설정
			Author : 이재은
			RegDate : 2020-01-15
			 */	
			String way = "";
			
			subUrl = "front/bbs/";
			
			if ((work).equals("list")) {
				
				//게시판리스트
				comm = new BoardComm();
				
			} else if ((work).equals("write")) {
				
				way =  request.getParameter("way");
				
				if ((way).equals("write")) {
					
					//write.jsp 이동
					comm = new BoardWriteComm();
				} else {
					
					//게시판 글쓰기
					comm = new BoardWriteProcComm();
				}
				
			} else if((work).equals("detail")) {
				
				//게시판상세보기
				comm = new BoardDetailComm();
				
			} else if((work).equals("modify")) {
				
				way = request.getParameter("way");
				
				if ((way).equals("modify")) {
					
					//boardModify.jsp 이동
					comm = new BoardModifyComm();
					
				} else {
										
					//게시판 수정
					comm = new BoardModifyProcComm();	
				}
				
			} else if((work).equals("del")) {
				
				way = request.getParameter("way");
				
				if ((way).equals("del")) {

					//boardDel.jsp 이동
					comm = new BoardDelComm();
				
				} else {

					//게시글 삭제
					comm = new BoardDelProcComm();					
				}
			
			}else if((work).equals("comt")) {
				/*
				Name : 게시판 댓글기능
				Author : 이재은
				RegDate : 2020-01-17
				*/
				//게시판 댓글기능
				comm = new BoardComtWriteComm();
				
			} else if((work).equals("comtDel")) {
				
				comm = new BoardComtDelComm();
			}
			
		} else if((type).equals("region")) {
			/*
			Name : 모임 지역 리스트
			Author : 전성용
			RegDate : 2020-01-16
			 */
			subUrl = "front/region/";
			comm = new MoimRegionComm();
			
			
		} else if((type).equals("regionView")) {
			/*
			Name : 모임 지역 상세보기
			Author : 전성용
			RegDate : 2020-01-20
			 */
			subUrl = "front/region/";
			comm = new RegionViewComm();
			
			
		}else if((type).equals("place")) {
			/*
			Name : 모임 플레이스
			Author : 전성용
			RegDate : 2020-01-16
			 */
			subUrl = "front/place/";
			comm = new PlaceComm();
			
		} else if((type).equals("pfaq")) {
			/*
			Name : 플레이스 faq
			Author : 전성용
			RegDate : 2020-01-16
			 */
			subUrl = "front/place/";
			comm = new PlaceFaqComm();
			
		} else if((type).equals("faq")) {
			/*
			Name : FAQ
			Author : 전성용
			RegDate : 2020-01-16
			 */
			subUrl = "front/bbs/";
			comm = new FaqComm();
			
		} else if((type).equals("inquiry")) {
			/*
			Name : 문의하기
			Author : 전성용
			RegDate : 2020-01-16
			 */
			subUrl = "front/bbs/";
			comm = new InquiryComm();
			
		}else if((type).equals("search")) {
			
			subUrl = "front/";
			comm = new SearchComm();
		} else {
			
			subUrl = "front/";
			comm = new MainComm();
		}
		
		
		String path = comm.exec(request, response);
		
		if((type).equals("loginProc")) {
			response.sendRedirect(subUrl+path);
		} else if((type).equals("logout")) {
			response.sendRedirect(subUrl+path);
		} else if((type).equals("joinOk")) {
			response.sendRedirect(subUrl+path);
		} else if((type).equals("moimCreProc")) {
			response.sendRedirect(subUrl+path);
		} else if ((path).equals("boardList")) {
			
			String cPage = request.getParameter("cPage");
			String bdId = request.getParameter("bdId");

			response.sendRedirect("/woorikiri/Frontcontroller?type=board&work=list&cPage="+cPage+"&bdId="+bdId);
			
		} else if ((path).equals("boardDetail")) {
			
			String cPage = request.getParameter("cPage");
			String sno = request.getParameter("sno");
			String bdId = request.getParameter("bdId");
			
			response.sendRedirect("/woorikiri/Frontcontroller?type=board&work=detail&cPage="+cPage+"&sno="+sno+"&bdId="+bdId);
			
		} else {
			request.getRequestDispatcher(subUrl+path).forward(request, response);
		}
		
		
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		doGet(request, response);
	}

}
