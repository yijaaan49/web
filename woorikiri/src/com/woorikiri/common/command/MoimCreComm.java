package com.woorikiri.common.command;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.woorikiri.front.moim.FreeVO.BoardFileVO;
import com.woorikiri.front.moim.dao.MoimDAO;
import com.woorikiri.front.moim.vo.MoimVO;

public class MoimCreComm implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		String path = "C:\\MyStudy\\img";		
		MultipartRequest multi = new MultipartRequest(
				request,//요청객체
				path, //실제 파일을 저장하기 위한 경로
				10 * 1024 * 1024,//업로드 파일의 최대용량(byte 단위)
				"UTF-8", //인코딩타입
				new DefaultFileRenamePolicy()//파일이름 중복 시 새로운 이름사용/
		);
		
		/*ArrayList<String> list = new ArrayList<>();
		Enumeration m = multi.getFileNames();
		while(m.hasMoreElements()){
		String fname = (String)m.nextElement();
		System.out.println(fname);	
			//파일정보 표시);
		 System.out.println(multi.getOriginalFileName(fname) );
		 System.out.println(multi.getFilesystemName(fname) );
		 System.out.println(multi.getContentType(fname));
		}*/
		
		
		
		String bfSource = multi.getOriginalFileName("f_name1");
		String bfType = multi.getContentType("f_name1");
		String bfFile = multi.getFilesystemName("f_name1");
		
		
		
		
		String ca1 = multi.getParameter("ca001");
		String ca2 = multi.getParameter("ca002");
		String ca3 = multi.getParameter("ca003");
		
		String ca = ca1 + ca2  + ca3;
		String title = multi.getParameter("title");
		int moimCnt = Integer.parseInt(multi.getParameter("moimCnt"));
		String memId = multi.getParameter("memId"); 
		String intro = multi.getParameter("intro");
		String date = multi.getParameter("date");
		String moimHour = multi.getParameter("moimHour");
		String moimMin = multi.getParameter("moimMin");
		String ageOption = multi.getParameter("ageOption");
		String gender = multi.getParameter("gender");
		String moimSdate = multi.getParameter("moimSdate");
		String moimEdate = multi.getParameter("moimEdate");
		String moimZoneCode = multi.getParameter("moimZoneCode");
		String address = multi.getParameter("address");
		String addressSub = multi.getParameter("addressSub");
		String [] tag = multi.getParameterValues("tag");
		String addressAdd = multi.getParameter("addressAdd");

			String moimTag = "";
			
		for(int i = 0; i<tag.length; i++) {
			if(i < tag.length-1) {
				moimTag += tag[i] +",";	
			} else {
				moimTag += tag[i];
			}
		}
	
		
		MoimVO vo = new MoimVO();
		
		System.out.println(memId);
		System.out.println(moimZoneCode);
		System.out.println(date);
		
		vo.setMoimCa(ca);
		vo.setMoimTitle(title);
		vo.setMoimCnt(moimCnt);
		vo.setMoimMemId(memId);
		vo.setMoimIntro(intro);
		vo.setMoimDate(date);
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
		vo.setMoimAddressAdd(addressAdd);
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
