package com.marondal.servlet.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/ex03")
public class Ex03Controller extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
//		response.setContentType("text/html");
		response.setContentType("application/json");
		
		PrintWriter out = response.getWriter();
		
		// 이름과 생년월일을 전달 받고, 이름과 나이를 표로 만들어준다.
		String name = request.getParameter("name"); // name이라는잉름으로 parameter를 입력받ㄱ겠다.
		String birthday = request.getParameter("birthday"); // String으로만 입력받을수있음 20010712
		
		int year;
		
		year = Integer.parseInt(birthday.substring(0,4));
		
		
		int age = 2023 - year +1;
//		// response가 html
//		out.println("<html><head><title>정보</title></head><body>");
//		out.println("<table border=1><tr><td>이름</td><td>" + name + "</td></tr>");
//		out.println("<tr><td>나이</td><td>" + age + "</td></tr></table></body></html>");
		
		//response에 데이터만담는다
		// 규격 - json
		// name: 김인규, age:24
		// json: dictionary
		// {"name":"김인규",:"age":24}
		// json: array
		// ["김인규","유재석"]
		// 
		// [
		//	{"name":"김인규","age":24},
		//	{"name":"유재석","age":32}
		// ]
		//
		
		out.println("{\"name\":\"" + name + "\",\"age\":" + age + "}"); // 따옴표 안에 따옴포: \"로 써야되는데 졸라귀찮다,

		
		
		
		
	}

}
