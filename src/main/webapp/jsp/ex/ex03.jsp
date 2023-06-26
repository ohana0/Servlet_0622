<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>post method</title>
</head>
<body>
<%
	String nickname = request.getParameter("nickname");
	String animal = request.getParameter("animal");
	String fruit = request.getParameter("fruit");
	String[] foodArray = request.getParameterValues("food");
	String foodString="";
	for(int i=0; i<foodArray.length; i++){
		foodString += "," + foodArray[i];
	}
%>
	<div>닉네임: <%=nickname %></div>
	<div>좋아하는동물: <%=animal %></div>
	<div>좋아하는 음식: <%=foodString %></div>
</body>

</html>