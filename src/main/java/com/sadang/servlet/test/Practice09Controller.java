package com.sadang.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/practice09")
public class Practice09Controller extends HttpServlet {

	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// head
		// EncodingFilter 이용
		response.setContentType("text/html");
		
		// body
		
		String name = request.getParameter("name");
		String selfIntroduce = request.getParameter("selfIntroduce");
		
		PrintWriter out = response.getWriter();
		
		out.println(""
				+ "<html>\n"
				+ "	<head>\n"
				+ "		<title>practice09</title>\n"
				+ "	</head>\n"
				+ "	<body>"
				+ "");
		
		out.println(""
				+ "		<h2>" + name + "님 지원이 완료되었습니다.</h2>\n"
				+ "		<hr>\n"
				+ "		<div>지원 내용 <br>\n"
				+ selfIntroduce
				+ "		</div>"
				+ "");
		
		out.println(""
				+ "	</body>\n"
				+ "</html>");
	}
}
