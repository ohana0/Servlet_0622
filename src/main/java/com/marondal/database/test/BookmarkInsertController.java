package com.marondal.database.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.marondal.common.MysqlService;
@WebServlet("/db/bookmark/insert")
public class BookmarkInsertController extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		String name= request.getParameter("name");
		String url = request.getParameter("url");
		
		String query = "INSERT INTO `bookmark`\r\n"
				+ "(`name`,`url`)\r\n"
				+ "VALUE\r\n"
				+ "('" + name+ "','"+ url +"');";
		
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		
		mysqlService.update(query);
		
		response.sendRedirect("/database/test02/test02.jsp");
		
		mysqlService.disconnect();
		
	}

}
