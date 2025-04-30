package com.sadang.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/practice05")
public class Practice05Controller extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {

		// head
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");

		// body
		PrintWriter out = response.getWriter();
		int number = Integer.parseInt(request.getParameter("number"));

		out.print("" 
				+ ""
				+ "<html>\n"
				+ "	<head>"
				+ "		<title>practice05</title>"
				+ "	</head>\n"
				+ "	<body>\n"
				+ "		<div>\n"
				+ "			<ul>\n");

		for (int i = 1; i <= 9; i++) {
			out.println("				<li>" + number + " X " + i + " = " + (number * i) + "</li>");
		}

		out.print("			</ul>\n"
				+ "		</div>\n"
				+ "	</body>\n"
				+ "</html>");

	}

}
