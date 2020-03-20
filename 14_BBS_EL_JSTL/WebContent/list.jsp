<%@page import="com.bc.mybatis.BBSVO"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="com.bc.mybatis.DAO"%>
<%@page import="com.bc.mybatis.Paging"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	//페이지 처리를 위한 Paging 객체 생성 해서 값 설정
	Paging p = new Paging();

	//1. 전체 게시물의 수를 구하기
	p.setTotalRecord(DAO.getTotalCount());
	p.setTotalPage(); //전체 페이지 갯수 구하기
	
	System.out.println(">> 전체 게시물 수 : " + p.getTotalRecord());
	System.out.println(">> 전체 페이지 수 : " + p.getTotalPage());
	
	//2. 현재 페이지 구하기(default : 1)
	String cPage = request.getParameter("cPage");
	if(cPage != null) {
		p.setNowPage(Integer.parseInt(cPage));
	}
	
	//3. 현재 페이지의 시작번호(begin)와 끝번호(end) 구하기
	p.setEnd(p.getNowPage() * p.getNumPerPage());
	p.setBegin(p.getEnd() - p.getNumPerPage() + 1);
	
	System.out.println("---------------------------");
	System.out.println(">> 현재페이지 : " + p.getNowPage());
	System.out.println(">> 시작번호(begin) : " + p.getBegin());
	System.out.println(">> 끝번호(end) : " + p.getEnd());
	
	
	//-------------블록(block) 계산하기-----------
	//4. 블록의 시작페이지, 끝페이지 구하기(현재페이지 번호 사용)
	int nowPage = p.getNowPage();
	int beginPage = (nowPage - 1) / p.getPagePerBlock() * p.getPagePerBlock() + 1;
	p.setBeginPage(beginPage);
	p.setEndPage(p.getBeginPage() + p.getPagePerBlock() - 1);
	
	//4-1. 게시글이 없는 페이지 안보이게 하기(끝페이지(endPage)가 전체 페이지 수(totalPage) 보다 클 때 처리)
	if(p.getEndPage() > p.getTotalPage()) { 
		p.setEndPage(p.getTotalPage());
	}
%>
<%
	//------------------------------------------
	//현재페이지 기준으로 게시글 가져오기
	Map<String, Integer> map = new HashMap<>();
	map.put("begin", p.getBegin());
	map.put("end", p.getEnd());
	
	List<BBSVO> list = DAO.getList(map);
	System.out.println("현재페이지 글목록(list) : " + list);
%>
<%
	//EL, JSTL 사용을 위해 scope에 데이터 등록(page 영역에)
	pageContext.setAttribute("list", list);
	pageContext.setAttribute("pvo", p);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BBS</title>
<style>
	#bbs table {
		width : 580px;
		margin-left: 10px;
		border-collapse: collapse;
		font-size: 14px;
	}
	#bbs table caption {
		font-size: 20px;
		font-weight: bold;
		margin-bottom: 10px;
	}
	#bbs table th, td {
		text-align: center;
		border: 1px solid black;
		padding: 4px 10px;
	}
	.title { background-color: lightsteelblue; }
	.no { width: 15%; }
	.writer { width: 15%; }
	.regdate { width: 20%; }
	.hit { width: 15%; }
	
	/***** 페이지 표시 부분 스타일 (시작) *****/
	.paging { list-style: none; }
	.paging li {
		float: left;
		margin-right: 8px;
	}
	.paging li a {
		text-decoration: none;
		display: block;
		padding: 3px 7px;
		border: 1px solid #00B3DC;
		font-weight: bold;
		color: black;
	}
	.paging .disable {
		border: 1px solid silver;
		padding: 3px 7px;
		color: silver;
	}
	.paging .now {
		border: 1px solid #ff4aa5;
		padding: 3px 7px;
		background-color: #ff4aa5;
	}
	.paging li a:hover {
		background-color: #00B3DC;
		color: white;
	}
	/***** 페이지 표시 부분 스타일 (끝) *****/
</style>
</head>
<body>
	
	<div id="bbs">
		<table>
			<caption>게시글 목록</caption>
			<thead>
				<tr class="title">
					<th class="no">번호</th>
					<th class="subject">제목</th>
					<th class="writer">글쓴이</th>
					<th class="regdate">작성일자</th>
					<th class="hit">조회수</th>
				</tr>
			</thead>
			<tbody>
			<c:choose>
				<c:when test="${empty list }">
					<tr>
						<td colspan="5">
							<h2>현재 등록된 글이 없습니다.</h2>
						</td>
					</tr>
				</c:when>
			</c:choose>
			<c:forEach var="vo" items="${list }">
				<tr>
					<td>${vo.b_idx }</td>
					<td>
						<a href="view.jsp?b_idx=${vo.b_idx}&cPage=${pvo.nowPage}">${vo.subject }</a>
					</td>
					<td>${vo.writer }</td>
					<td>${vo.write_date }</td>
					<td>${vo.hit }</td>
				</tr>
			</c:forEach>
			
			</tbody>
			<tfoot>
				<tr>
					<td colspan="4">
						<ol class="paging">
							<%-- [이전으로]에 대한 사용여부 처리 --%>
							<c:choose>
								<%-- 사용불가(disable) : 첫번째 블록일 경우! --%>
								<c:when test="${pvo.beginPage == 1 }">
									<li class="disable">이전으로</li>
								</c:when>
								<%-- 사용가능하게끔!! --%>
								<c:otherwise>
									<li>
										<a href="list.jsp?cPage=${pvo.beginPage-1 }">이전으로</a>
									</li>
								</c:otherwise>
							</c:choose>
							<%-- 블록내에 표시할 페이지 표시(시작페이지~끝페이지) --%>
							<c:forEach var="k" begin="${pvo.beginPage }" end="${pvo.endPage }">
								<c:choose>
									<c:when test="${k == pvo.nowPage }">
										<li class="now">${k }</li>
									</c:when>
									<c:otherwise>
									<li>
										<a href="list.jsp?cPage=${k }">${k }</a>
									</li>
									</c:otherwise>
								</c:choose>
							</c:forEach>
							<%-- [다음으로]에 대한 사용여부 처리 --%>
							<c:choose>
								<%-- 사용불가(disable) : 맨 마지막 블록!!(endPage가 전체페이지 수보다 크거나 같으면) --%>
								<c:when test="${pvo.endPage >= pvo.totalPage }">
									<li class="disable">다음으로</li>
								</c:when>
								<%-- 사용가능!!! --%>
								<c:otherwise>
									<li>
										<a href="list.jsp?cPage=${pvo.endPage + 1 }">다음으로</a>
									</li>
								</c:otherwise>
							</c:choose>
						</ol>
					</td>
					<td>
						<input type="button" value="글쓰기" onclick="javascript:location.href='write.jsp'">
					</td>
				</tr>
			</tfoot>	
		</table>
	</div>
</body>
</html>