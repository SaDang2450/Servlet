package com.sadang.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/practice10")
public class Practice10Controller extends HttpServlet {

	private final Map<String, String> userMap = new HashMap<String, String>() {
		{
			put("id", "hagulu");
			put("password", "asdf");
			put("name", "김인규");
		}
	};

	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// Encoding Filter -> utf-8
		response.setContentType("text/html");

		String idInput = request.getParameter("idInput");
		String passwordInput = request.getParameter("passwordInput");

		PrintWriter out = response.getWriter();
		
		out.println(""
				+ "<html>\n"
				+ "	<head>\n"
				+ "		<title>practice10</title>\n"
				+ "	</head>\n"
				+ "	<body>"
				+ "");
		
		if(!idInput.equals(userMap.get("id"))) {
			out.println(""
				+ "		<div>id가 일치하지 않습니다.</div>");
		} else if (!passwordInput.equals(userMap.get("password"))) {
			out.println(""
					+ "		<div>password가 일치하지 않습니다.</div>");
		} else {
			out.println(""
					+ "		<h2>" + userMap.get("name") + "님 환영 합니다. </h2>");
		}
		
		out.println(""
				+ "	</body>\n"
				+ "</html>");
		

	}

}
