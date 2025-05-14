package com.sadang.database.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sadang.common.MysqlService;

@WebServlet("/db/user/create")
public class UserCreateController extends HttpServlet {

	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {

		// head
		// response.setContentType("text/plain");

		// PrintWriter out = response.getWriter();

		// body
		// 입력할 정보를 전달 받는다
		String name = request.getParameter("name");
		String birthday = request.getParameter("birthday");
		String email = request.getParameter("email");
		String introduce = request.getParameter("introduce");

		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();

		String query = "INSERT INTO `new_user`\r\n" + "(`name`, `yyyymmdd`, `email`, `introduce`)\r\n" + "VALUE\r\n"
				+ "('" + name + "', '" + birthday + "', '" + email + "', '" + introduce + "');";

//		int count = mysqlService.update(query);
		mysqlService.update(query);

		// list.jsp 에 다시 요청하여 조회 결과 출력
		// list.jsp 로 새로운 요청

		// redirect : response에 새롭게 요청할 url 을 전달

		response.sendRedirect("/db/user/list.jsp");

	}

}
