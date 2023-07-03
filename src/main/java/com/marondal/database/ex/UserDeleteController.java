package com.marondal.database.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.marondal.common.MysqlService;

@WebServlet("/db/user/delete")
public class UserDeleteController extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		
		String id = request.getParameter("id");
		
		String query = "DELETE FROM `new_user` WHERE `id` = "+ id + ";";
		
		mysqlService.update(query);
		
		response.sendRedirect("/database/ex/ex01.jsp");
		
	}

}
