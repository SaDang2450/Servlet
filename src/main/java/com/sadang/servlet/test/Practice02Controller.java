package com.sadang.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Practice02Controller extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		// header
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/plain");
		
		// body
		Date now = new Date();
		SimpleDateFormat formatter = new SimpleDateFormat("HH시 mm분 ss초");
		String nowTime = formatter.format(now);
		
		PrintWriter out = response.getWriter();
		out.println("현재 시간은 " + nowTime + " 입니다.");
		
	}
}
