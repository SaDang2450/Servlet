package com.sadang.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Practice01Controller extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {

		// header
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/plain");

		// body
		Date now = new Date();
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy년 M월 d일");
		
		String text = "오늘의 날짜는 " + formatter.format(now);
		
		PrintWriter out = response.getWriter();
		out.println(text);
	}
}
