<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test03</title>
</head>
<body>
	<%
		Date date = new Date();
		SimpleDateFormat nowDate0= new SimpleDateFormat("yyyy년 MM월 dd일");
		SimpleDateFormat nowTime0 = new SimpleDateFormat("HH시 mm분 ss초");
		String nowDate = nowDate0.format(date);
		String nowTime = nowTime0.format(date);
		
		String printString="";
		if(request.getParameter("option").equals("date")){
			printString = "오늘 날짜" + nowDate;
			
		}
		else if(request.getParameter("option").equals("time")){
			printString= "현재 시간" + nowTime;
		}

		
	%>
	<h1><%=printString %></h1>
	

	
	
	
	
</body>
</html>