package com.sadang.servlet.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/ex03")
public class Ex03Controller extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {

		// head
		response.setCharacterEncoding("utf-8");
//		response.setContentType("text/html");
		response.setContentType("application/json");

		// body
		PrintWriter out = response.getWriter();

		// request 로부터 "name", "birthday" 등의 이름으로 값을 받아옴.
		// localhost:8080/servlet/ex03?name=한글이름&birthday=19990101 << 클라이언트
		String theName = request.getParameter("name");
		String theBirthday = request.getParameter("birthday");

		String yearString = theBirthday.substring(0, 4);
		int year = Integer.parseInt(yearString);

		int age = 2025 - year + 1;

		// 데이터를 전달하기 위한 문자열 규격 : JSON 을 이용 (JavaScript Object Notation)
		// {"name" : theName, "birthday" : theBirthday } Key - Value 구조 + List 구조

		out.println("{\"name\": \"" + theName + "\", \"age\" : " + age + "}");

//		out.println(""
//				+ ""
//				+ ""
//				+ "<html>\n"
//				+ "		<head><title>정보</title></head>\n"
//				+ "		<body>\n"
//				+ "			<h3>이름 : " + theName + " </h3>\n"
//				+ "			<h3>나이 : " + age + " </h3>\n"
//				+ "		</body>"
//				+ "</html>"
//				+ "");
	}

}
