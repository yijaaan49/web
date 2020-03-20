package com.woorikiri.common.command;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.woorikiri.front.moim.FreeVO.BoardFileVO;
import com.woorikiri.front.moim.dao.MoimDAO;
import com.woorikiri.front.moim.vo.MoimVO;

public class MoimCreProcComm implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		String rootPath = request.getServletContext().getRealPath("/front/") ;
		String savePath1 = rootPath + "data/" ;
		String savePath2 = savePath1 + "moim" ;
		
		System.out.println(savePath2);


		
		//폴더가 없으면 생성
		File Folder = new File(savePath2);
		
		if (!Folder.exists()) {
			try{
			    Folder.mkdir(); //폴더 생성합니다.
			    System.out.println("폴더가 생성되었습니다.");
		        } 
		        catch(Exception e){
			    e.getStackTrace();
			}     
			
		}else {
			System.out.println("이미 폴더가 생성되어 있습니다.");
		}
		
		
		
		MultipartRequest multi = new MultipartRequest(
				request,//요청객체
				savePath2, //실제 파일을 저장하기 위한 경로
				10 * 1024 * 1024,//업로드 파일의 최대용량(byte 단위)
				"UTF-8", //인코딩타입
				new DefaultFileRenamePolicy()//파일이름 중복 시 새로운 이름사용/
		);
		
		String bfSource = multi.getOriginalFileName("f_name1");
		String bfType = multi.getContentType("f_name1");
		String bfFile = multi.getFilesystemName("f_name1");
		
		
		String mCode = multi.getParameter("moim_code");
		String ca = multi.getParameter("moim_ca");
		String title = multi.getParameter("moim_title");
		int moimCnt = Integer.parseInt(multi.getParameter("moimCnt"));
		String memId = multi.getParameter("memId"); 
		String intro = multi.getParameter("intro");
		String sdate = multi.getParameter("sdate");
		String moimHour = multi.getParameter("moimHour");
		String moimMin = multi.getParameter("moimMin");
		String ageOption = multi.getParameter("ageOption");
		String gender = multi.getParameter("gender");
		String moimSdate = multi.getParameter("moimSdate");
		String moimEdate = multi.getParameter("moimEdate");
		String moimZoneCode = multi.getParameter("moimZoneCode");
		String address = multi.getParameter("address");
		String addressSub = multi.getParameter("addressSub");
		String moimTag = multi.getParameter("moim_tag");	

		
		MoimVO vo = new MoimVO();
		
		System.out.println(memId);
		System.out.println(moimZoneCode);
		System.out.println(sdate);
		
		vo.setMoimCd(mCode);
		vo.setMoimCa(ca);
		vo.setMoimTitle(title);
		vo.setMoimCnt(moimCnt);
		vo.setMoimMemId(memId);
		vo.setMoimIntro(intro);
		vo.setMoimDate(sdate);
		vo.setMoimHour(moimHour);
		vo.setMoimMin(moimMin);
		vo.setMoimAgeOption(ageOption);
		vo.setMoimGender(gender);
		vo.setMoimSdate(moimSdate);
		vo.setMoimEdate(moimEdate);
		vo.setMoimZoneCode(moimZoneCode);
		vo.setMoimAddress(address);
		vo.setMoimAddressSub(addressSub);
		vo.setMoimTag(moimTag);
		System.out.println(vo);	
		
		if(bfSource == null && bfType== null && bfFile== null) {
			
			return "moimView.jsp";
			
		}else {
			
			MoimDAO.insertList(vo);
			
			BoardFileVO fvo = new BoardFileVO();
			int result = MoimDAO.oneFile(memId);
			


			fvo.setBfSource(bfSource);
			fvo.setBfType(bfType);
			fvo.setBfFile(bfFile);
			fvo.setBdSno(result);
			
			System.out.println(title);
			System.out.println("fvo : " + fvo);
			System.out.println(memId);
			
			MoimDAO.FileinsertList(fvo);
			
			
			
			return "moimList2.jsp";
		}
		
		

		
	}

}
