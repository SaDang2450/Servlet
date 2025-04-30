package com.sadang.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/practice07")
public class Practice07Controller extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// head
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		// body
		String address = request.getParameter("address");
		String paymentCard = request.getParameter("paymentCard");
		int price = Integer.parseInt(request.getParameter("price"));
		
		PrintWriter out = response.getWriter();
		
		out.println(""
				+ "<html>\n"
				+ "	<head>\n"
				+ "		<title>practice07</title>\n"
				+ "	</head>\n"
				+ "	<body>\n");
		
		if(!address.contains("서울시")) {
			out.println(""
				+ "		<h3>배달 불가 지역입니다.</h3>\n");
		} else if (paymentCard.equals("신한카드")) {
			out.println(""
				+ "		<h3>결제 불가 카드 입니다.</h3>\n");
		} else {
			out.println(""
				+ "		<h3>" + address + " 배달 준비중</h3>\n"
				+ "		<hr>\n"
				+ "		<div>결제금액 : " + price + "원</div>\n"
				+ "");				
		}
		
		out.println(""				
				+ "	</body>\n"
				+ "</html>");
	}

}
