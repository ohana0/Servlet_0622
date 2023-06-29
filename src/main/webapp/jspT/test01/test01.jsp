<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="style.css" type="text/css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	
</head>
<body>

<div id="wrapper">
	<header class="d-flex justify-content-center align-items-center">
		<h1 class="text-danger">SK broadband IPTV</h1>
	</header>
	<nav class="main-menu bg-danger text-light">
		<ul class="nav nav-fill w-100">
            <li class="nav-item p-2"><a href="/jspT/test01/test01.jsp" class="text-light">전체</a></li>
			<li class="nav-item p-2"><a href="/jspT/test01/test01.jsp?category=지상파" class="text-light">지상파</a></li>                                               
			<li class="nav-item p-2"><a href="/jspT/test01/test01.jsp?category=드라마" class="text-light">드라마</a></li>
			<li class="nav-item p-2"><a href="/jspT/test01/test01.jsp?category=예능" class="text-light">예능</a></li>
			<li class="nav-item p-2"><a href="/jspT/test01/test01.jsp?category영화" class="text-light">영화</a></li>
			<li class="nav-item p-2"><a href="/jspT/test01/test01.jsp?category=스포츠" class="text-light">스포츠</a></li>
			
		</ul>
	</nav>	
	<section>
		
	<%
	    List<Map<String, String>> list = new ArrayList<>();
	    Map<String, String> map = new HashMap<String, String>() {{ put("ch", "5"); put("name", "SBS"); put("category", "지상파"); } };
	    list.add(map);
	    map = new HashMap<String, String>() {{ put("ch", "7"); put("name", "KBS2"); put("category", "지상파"); } };
	    list.add(map);
	    map = new HashMap<String, String>() {{ put("ch", "9"); put("name", "KBS1"); put("category", "지상파"); } };
	    list.add(map);
	    map = new HashMap<String, String>() {{ put("ch", "11"); put("name", "MBC"); put("category", "지상파"); } };
	    list.add(map);

	    map = new HashMap<String, String>() {{ put("ch", "54"); put("name", "OCN"); put("category", "영화"); } };
	    list.add(map);
	    map = new HashMap<String, String>() {{ put("ch", "56"); put("name", "Screen"); put("category", "영화"); } };
	    list.add(map);
	    map = new HashMap<String, String>() {{ put("ch", "57"); put("name", "Mplex"); put("category", "영화"); } };
	    list.add(map);

	    map = new HashMap<String, String>() {{ put("ch", "30"); put("name", "KBS 드라마"); put("category", "드라마"); } };
	    list.add(map);
	    map = new HashMap<String, String>() {{ put("ch", "32"); put("name", "MBC 드라마"); put("category", "드라마"); } };
	    list.add(map);
	    map = new HashMap<String, String>() {{ put("ch", "34"); put("name", "Olive"); put("category", "드라마"); } };
	    list.add(map);

	    map = new HashMap<String, String>() {{ put("ch", "3"); put("name", "tvN"); put("category", "예능"); } };
	    list.add(map);
	    map = new HashMap<String, String>() {{ put("ch", "28"); put("name", "MBC Every1"); put("category", "예능"); } };
	    list.add(map);
	    map = new HashMap<String, String>() {{ put("ch", "48"); put("name", "JTBC2"); put("category", "예능"); } };
	    list.add(map);
	    map = new HashMap<String, String>() {{ put("ch", "49"); put("name", "E채널"); put("category", "예능"); } };
	    list.add(map);

	    map = new HashMap<String, String>() {{ put("ch", "120"); put("name", "SPOTV"); put("category", "스포츠"); } };
	    list.add(map);
	    map = new HashMap<String, String>() {{ put("ch", "121"); put("name", "KBSN 스포츠"); put("category", "스포츠"); } };
	    list.add(map);
	%>
<table class="table">
	<thead>
		<tr class="d-flex">
			<th class="col-4 d-flex justify-content-center">채널</th>
			<th class="col-4 d-flex justify-content-center">채널명</th>
			<th class="col-4 d-flex justify-content-center">카테고리</th>
			
		</tr>
	</thead>
	<tbody>
		
	<%	

		for(Map<String,String> channel:list){

				String category = request.getParameter("category");
				if(!category.equals(channel.get("category"))){
					continue;
				}
			
	%>
			
		<tr class="d-flex">
			<td class="col-4 d-flex justify-content-center"><%=channel.get("ch") %></td>
			<td class="col-4 d-flex justify-content-center"><%=channel.get("name") %></td>
			<td class="col-4 d-flex justify-content-center"><%=channel.get("category") %></td>
		</tr>
	<%
		}
	%>

		
	</tbody>

	</table>
	
	
	
	
	
	</section>
	<footer class="d-flex justify-content-center align-items-center">
		<h5>Copyright 2021.marondal All Right Reserved.</h5>
	
	</footer>
</div>













        <script src="https://code.jquery.com/jquery-3.7.0.js" integrity="sha256-JlqSTELeR4TLqP0OG9dxM7yDPqX1ox/HfgiSLBj8+kM=" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
 
</body>
</html>