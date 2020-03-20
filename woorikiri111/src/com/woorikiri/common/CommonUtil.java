package com.woorikiri.common;

import java.util.regex.Pattern;

public class CommonUtil {

	static Pattern p = Pattern.compile("([a-zA-Z0-9].*[!,@,#,$,%,^,&,*,?,_,~])|([!,@,#,$,%,^,&,*,?,_,~].*[a-zA-Z0-9])"); // 영문대소문자
	static Pattern p2 = Pattern.compile("(\\w)\\1\\1\\1");
	static Pattern p3 = Pattern.compile("([\\{\\}\\[\\]\\/?.,;:|\\)*~`!^\\-_+<>@\\#$%&\\\\\\=\\(\\'\\\"])\\1\\1\\1");
	static Pattern p4 = Pattern.compile("(^[0-9]+$)");
	
	// 아이디 유효성 검사
	public static String idValidator(String userId) {

		String returnValue = "success";

		if (spaceCheck(userId)) { // 패스워드 공백 문자열 체크
			returnValue = "아이디는 공백문자를 허용하지 않습니다.";
		} else if (userId.length() < 3 || userId.length() > 8) { // 자릿수 검증
			returnValue = "아이디는 3자 이상, 8자 이하로 구성하세요.";
		}

		return returnValue;
	}
	
	/*
	 * 공백 문자 체크
	 *
	 * @param spaceCheck
	 * 
	 * @return
	 * 
	 */

	public static boolean spaceCheck(String spaceCheck) {
		for (int i = 0; i < spaceCheck.length(); i++) {
			if (spaceCheck.charAt(i) == ' ')
				return true;
		}

		return false;
	}
	
	// 이메일 유효성 검사
	public static boolean isEmailCheck(String memEmail) {
		boolean ischeck = false;

		String regExp = "^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9._]+\\.[a-zA-Z]{2,6}$";
		if (memEmail.matches(regExp) == true) {
			ischeck = true;

		} else {
			System.out.println("*");
			System.out.println("* 이메일 형식에 맞게 입력해주시기 바랍니다.");
			ischeck = false;
		}
		return ischeck;
	}
		
	
}
