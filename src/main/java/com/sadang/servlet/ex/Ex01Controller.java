package com.sadang.servlet.ex;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Ex01Controller extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {

		// 결과물에 대한 정보 설정 // Response Header
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/plain");
		// MIME : 데이터의 타입을 구분하기 위한 정해진 규격 문자열

		// 결과물 // Response Body
		PrintWriter out = response.getWriter();
		out.println("Servlet Response");

		
		// 현재의 날짜와 시간을 보여주는 페이지
		// 출력 형태 수정하기 : YYYY년 MM월 DD일 HH:MM:SS // hh <- 04시 // HH <- 16시
		Date now = new Date();
		out.println(now);
		
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy년 M월 d일 HH:mm:ss");
		String dateTimeString = formatter.format(now);
		out.println(dateTimeString);
		
	}
}
