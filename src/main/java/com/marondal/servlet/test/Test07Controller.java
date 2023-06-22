package com.marondal.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Test07Controller extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		String address = request.getParameter("address");
		String card = request.getParameter("card");
		String price = request.getParameter("price");
		
		boolean delivery= true;
		out.println("<html><head><title>Delivery</title></head><body>");
		if(!(address.contains("서울시"))) {
			out.println("배달불가지역입니다.");
			delivery=false;
		}
		if(card.equals("신한카드")) {
			out.println("배달불가지역입니다.");
			delivery=false;
		}
		if(delivery) {
			out.println("<h3>" + address + "</h3>");
			out.println("<br>");
			out.println("<div>결재금액: " + price + "원</div>");
		}	
		
		out.println("</body></html>");
		
	}

}
