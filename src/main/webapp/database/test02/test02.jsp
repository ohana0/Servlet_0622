<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.marondal.common.MysqlService" %>
<%@ page import="java.sql.ResultSet" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>즐겨찾기 목록</title>
       <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

</head>
<body>
	<%
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		
		String query = "SELECT * FROM `bookmark` ORDER BY `id` DESC";
		ResultSet resultSet = mysqlService.select(query);
		
		
	%>
<div class="container p-4">

	<table class="table">
		<thead>
			<tr class="d-flex">
				<th class="col-5 d-flex justify-content-center">사이트</th>
				<th class="col-5 d-flex justify-content-center">사이트 주소</th>
				<th class="col-2"></th>
			</tr>
		
		</thead>
		<tbody>
		<%
		while(resultSet.next()){
		%>
		
			<tr class="d-flex">
				<td class="col-5 d-flex justify-content-center"><%=resultSet.getString("name") %></td>
				<td class="col-5 d-flex justify-content-center"><a href="<%=resultSet.getString("url") %>"><%=resultSet.getString("url") %></a></td>
				<td class="col-2 d-flex justify-content-center"><a href="/db/bookmark/delete?id=<%=resultSet.getString("id")%>">삭제하기</a></td>
			</tr>
		<%
		}
		%>
	
		
		
		</tbody>
	
	
	
	</table>
	
	<a href="/database/test02/test02_InsertSite.jsp"><button class="btn">추가하기</button></a>




</div>


        <script src="https://code.jquery.com/jquery-3.7.0.js" integrity="sha256-JlqSTELeR4TLqP0OG9dxM7yDPqX1ox/HfgiSLBj8+kM=" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
 
</body>
</html>