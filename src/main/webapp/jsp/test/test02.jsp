<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Get Method - form 태그</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
	<%
		
	String height = request.getParameter("height");
	String weight = request.getParameter("weight");
	int myHeight = Integer.parseInt(height);
	int myWeight = Integer.parseInt(weight);
	Double bmi = myWeight/((myHeight/100.0)*(myHeight/100.0));
	String myBmi;
	if(bmi>=31){
		myBmi = "비만";
	}
	else if(bmi>=26){
		myBmi = "과체중";
	}
	else if(bmi>=21){
		myBmi = "정상";
	}
	else{
		myBmi = "저체중";
	}
	
	
	%>
	<div class="pl-4">
		<h1>BMI 측정 결과</h1>
		<h1 class="d-flex pt-4 display-4">당신은 <div class="text-primary"><%=myBmi %></div> 입니다.</h1>
		<h4>BMI수치: <%=bmi %></h4>
	</div>
</body>
</html>