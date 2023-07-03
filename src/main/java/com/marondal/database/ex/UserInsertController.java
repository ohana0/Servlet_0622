package com.marondal.database.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.marondal.common.MysqlService;
@WebServlet("/db/user/insert")
public class UserInsertController extends HttpServlet {
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setContentType("text/plain");
		
		PrintWriter out = response.getWriter();
		
		String name = request.getParameter("name");
		String birthday = request.getParameter("birthday");
		String email = request.getParameter("email");
		String introduce = request.getParameter("introduce");
		
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		
		String query = "INSERT INTO `new_user`\r\n"
				+ "(`name`,`yyyymmdd`,`email`,`introduce`)\r\n"
				+ "VALUES\r\n"
				+ "('" + name + "','" + birthday + "','"+ email +"','" + introduce + "');";
		
		int count = mysqlService.update(query);
		
		
//		out.println("추가된 사용자: " + count);
		
		
		
		mysqlService.disconnect();
		
		// 추가했으면 리스트페이지로 이동시켜야됨
		// redirect
		
		response.sendRedirect("/database/ex/ex01.jsp");
		
		
		
		
		
		
		
		
		
		
	}

}
