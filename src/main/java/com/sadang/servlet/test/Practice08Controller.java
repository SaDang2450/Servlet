package com.sadang.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/practice08")
public class Practice08Controller extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// head
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		// body
		List<String> list = new ArrayList<>(Arrays.asList(
		        "강남역 최고 맛집 소개 합니다.", 
		        "오늘 기분 좋은 일이 있었네요.", 
		        "역시 맛집 데이트가 제일 좋네요.", 
		        "집에 가는 길에 동네 맛집 가서 안주 사갑니다.",
		        "자축 저 오늘 생일 이에요."));
		
		String searching = request.getParameter("searching");
		
		
		PrintWriter out = response.getWriter();		
		out.println(""
				+ "<html>\n"
				+ "	<head>\n"
				+ "		<title>practice08</title>\n"
				+ "	</head>\n"
				+ "	<body>\n");
		
		for(String text : list) {
			if(text.contains(searching)) {
				String newText = text.replace(searching, "<b>" + searching + "</b>");
				out.println(""
				+ "		<div>" + newText + "</div><hr>");
			}
		}
		
		out.println("\n"
				+ "	</body>\n"
				+ "</html>");
		
	}

}
