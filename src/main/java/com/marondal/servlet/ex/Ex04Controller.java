package com.marondal.servlet.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/ex04")
public class Ex04Controller extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		//이름과 생년월일 전달받고, 이름, 나이 보여주는 페이지 만들것
		
		String name = request.getParameter("name");
		String birthdayStr = request.getParameter("birthday");
		
		int age = 2023 - Integer.parseInt(birthdayStr.substring(0,4)) + 1;
		
		out.println("<html><head><title></title></head><body>");
		out.println("<h2>이름 : " + name + "</h2>");
		out.println("<h2>나이 : " + age + "</h2></body></html>");
	}
}
