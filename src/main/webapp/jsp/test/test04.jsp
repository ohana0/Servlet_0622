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
		int number1 = Integer.parseInt(request.getParameter("number1"));
		int number2 = Integer.parseInt(request.getParameter("number2"));	
		String operator = request.getParameter("operator");
		String operatorSign = "";
		double result = 0;
		if(operator.equals("plus")){
			operatorSign = "+";
			result = number1+number2;
		}
		else if(operator.equals("minus")){
			operatorSign = "-";
			result = number1-number2;
		}
		else if(operator.equals("multi")){
			operatorSign = "X";
			result = number1 * number2;
		}
		else{
			operatorSign = "/";
			result = number1/number2;
		}
		
			
	%>
	
	<h3>계산 결과</h3>
	
	<h3><%=number1 %> <%=operatorSign %> <%=number2 %> = <%=result %></h3>
	
</body>
</html>