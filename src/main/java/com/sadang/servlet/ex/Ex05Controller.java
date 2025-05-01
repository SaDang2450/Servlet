package com.sadang.servlet.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/ex05")
public class Ex05Controller extends HttpServlet {

	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// doPost의 경우 = 보안에 민감한 데이터 OR 길이가 긴 데이터 (주소표시줄에 노출하는 것이 예민한 자료)
		// head
		response.setContentType("text/html");

		// body
		PrintWriter out = response.getWriter();

		String theName = request.getParameter("name");
		String theBirthday = request.getParameter("birthday");

		int year = Integer.parseInt(theBirthday.substring(0, 4));
		int age = 2025 - year + 1;
		
		out.println(""
				+ "<html>\n"
				+ "	<head>\n"
				+ "		<title>정보</title>\n"
				+ "	</head>\n"
				+ "	<body>\n");
		
		out.println(""
				+ "		<h3>이름 : " + theName + "</h3>\n"
				+ "		<h3>나이 : " + age + "</h3>\n");
		
		out.println(""
				+ "	</body>\n"
				+ "</html>");
	}

}
