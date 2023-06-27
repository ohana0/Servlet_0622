<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		int cm = Integer.parseInt(request.getParameter("cm"));
	
		String[] unitArray = request.getParameterValues("unit");
		String result = "";
		
		for(int i = 0; i< unitArray.length;i++){
			
			String unit = unitArray[i];
			if(unit.equals("inch")){
				double inch = cm * 0.39;
				result +=inch + "in<br>";
					
			}
			else if(unit.equals("yard")){
				double yard= cm*0.010936133;

				result += yard + "yd<br>";
			}
			else if(unit.equals("feet")){
				double feet = cm*0.032808399;

				result += feet + "ft<br>";
				
			}
			else if(unit.equals("meter")){
				double meter= cm/100.0;

				result += meter + "m<br>";
			}
			
		}
	
	
	%>
	
	
	<h2>변환 결과</h2>
	
	<h4><%=cm %>cm</h4>
	<hr>
	<%=result %>
	
	
	
</body>
</html>