<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import = "java.util.List" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp ex01</title>
</head>
<body>
	<h2>JSP 기본 문법</h2>
	
	<!-- html주석:사용자가봐도되는거 -->
	<%-- jsp주석:사용자가보면안되는거 --%>
	
	<h2>1.합계구하기</h2>
	<%
		int sum=0;
		for(int i = 0; i<=10; i++){
			sum+=i;
		}
	%>
	<h3>합계: <%=sum %> </h3>
	
	<input type="text" value="<%=sum %>">
	
	<%
		// 동물이름을 저장하는 리스트
		List<String> animalList= new ArrayList<>();
		// import해야되는데 ctrl sft O로 안됨.
		animalList.add("dog");
		animalList.add("cat");
	%>
	<h3>동물 이름</h3>
	<ul>
		<li><%=animalList.get(0) %></li>
		<li><%=animalList.get(1) %></li>
	</ul>
	
	<h2>메소드 만들기</h2>
	
	
	<%!
		public String getHelloWorld(){
			return "Hello World";
		}
	%>
	
	<h3><%=getHelloWorld() %></h3>
	
	
	
	
	
	
	
	
	
	
</body>
</html>