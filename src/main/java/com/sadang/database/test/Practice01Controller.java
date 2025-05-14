package com.sadang.database.test;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sadang.common.MysqlService;

public class Practice01Controller extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) {
		//head
		response.setContentType("text/plain");
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		
		//body
		
	}

}
