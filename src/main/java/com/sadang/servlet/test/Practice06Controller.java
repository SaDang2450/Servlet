package com.sadang.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/practice06")
public class Practice06Controller extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {

		// head
		response.setCharacterEncoding("utf-8");
		response.setContentType("application/json");

		// body
		int number1 = Integer.parseInt(request.getParameter("number1"));
		int number2 = Integer.parseInt(request.getParameter("number2"));

		int addition = number1 + number2;
		int subtraction = number1 - number2;
		int multiplication = number1 * number2;
		int division = number1 / number2;

		PrintWriter out = response.getWriter();

		// {"addition" : addition, "subtraction" : subtraction, "multiplication" : multiplication, "division" : division }
		out.println("{\"addition\" : " + addition + ", \"subtraction\" : " + subtraction + ", \"multiplication\" : "
				+ multiplication + ", \"division\" : " + division + "}");

	}

}
