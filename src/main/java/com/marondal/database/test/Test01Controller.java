package com.marondal.database.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.marondal.common.MysqlService;
@WebServlet("/db/test01")
public class Test01Controller extends HttpServlet{
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		MysqlService mysqlService = MysqlService.getInstance();
		
		mysqlService.connect();
		
		String selectQuery="Select * From `real_estate`;";
		ResultSet resultSet = mysqlService.select(selectQuery);
		
		
		out.println("<html><head><title>매물 리스트</title></head><body>");
		
		mysqlService.update("INSERT INTO `real_estate`\r\n"
				+ "(`realtorId`,`address`,`area`,`type`,`price`,`rentPrice`)\r\n"
				+ "VALUES\r\n"
				+ "(3,'헤라펠리스 101동 5305호',350,'매매',150000,NULL);");
		
		try {
			int i = 0;
			while(resultSet.next() ) {
				String address  = resultSet.getString("address");
				int area = resultSet.getInt("area");
				String type  = resultSet.getString("type");				
				
				out.println("매물 주소 : " + address + ", 면적 : " + area + ", 타입 : " + type);
				i++;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}

}
