<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.util.List" %>
<%@ page import="java.util.Arrays" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장보기 목록</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

</head>
<body>
<%
	List<String> goodsList = Arrays.asList(new String[]{ 
	    "저지방 우유", "요플레 4개", "딸기 1팩", "삼겹살 300g", "생수 6개", "주방 세제"
	});

%>
<h1 class=" d-flex justify-content-center">장보기 목록</h1>
<table class="table">
	<thead>
		<tr class="d-flex">
			<th class="col-3 d-flex justify-content-center">번호</th>
			<th class="col-9 d-flex justify-content-center">품목</th>
			
		</tr>
	</thead>
	<tbody>
			
	<%
		for(int i = 0; i<goodsList.size();i++){
			int number=i+1;
			String goods = goodsList.get(i);
	%>
		<tr class="d-flex">
			<td class="col-3 d-flex justify-content-center"><%=number %></td>
			<td class="col-9 d-flex justify-content-center"><%=goods %></td>
			
		</tr>
	<%		
		}
	
	%>
		
	</tbody>

</table>

	<script src="https://code.jquery.com/jquery-3.7.0.js" integrity="sha256-JlqSTELeR4TLqP0OG9dxM7yDPqX1ox/HfgiSLBj8+kM=" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</body>
</html>