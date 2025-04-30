package com.sadang.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/practice04")
public class Practice04Controller extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		// header
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		// body
		
		PrintWriter out = response.getWriter();
		out.print(""
				+ "<html>\n"
				+ "		<head><title>practice04</title></head>\n"
				+ "		<body>\n"
				+ "			<ul>\n");
		
		for(int i = 1; i <= 30; i ++) {
			out.print("				<li>" + i + " 번째 리스트 </li>\n");
		}
		
		out.print(""
				+ "			</ul>\n"
				+ "		</body>\n"
				+ "</html>");
	}
}
