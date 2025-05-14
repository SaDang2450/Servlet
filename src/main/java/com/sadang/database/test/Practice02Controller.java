package com.sadang.database.test;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sadang.common.MysqlService;

@WebServlet("/db/test/practice02")
public class Practice02Controller extends HttpServlet {

	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// head
		// INSERT 및 DELETE 기능 수행
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();

		// body
		String name = request.getParameter("name");
		String url = request.getParameter("url");

		String query = "INSERT INTO `bookmark`\r\n" + "(`name`, `url`)\r\n" + "VALUE\r\n" + "('" + name + "',	'" + url
				+ "')";

		mysqlService.update(query);

		response.sendRedirect("/db/test/practice02/list.jsp");
	}

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// head
		// INSERT 및 DELETE 기능 수행
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();

		// body
		int id = Integer.parseInt(request.getParameter("id"));

		String query = "DELETE FROM `bookmark` WHERE `id`=" + id;

		mysqlService.update(query);

		response.sendRedirect("/db/test/practice02/list.jsp");
	}
}
