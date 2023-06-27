<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="java.util.Arrays" %>
<%@ page import ="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test01</title>
</head>

<body>
<h3>1. 점수들의 평균 구하기</h3>
<%
	int[] scores = {80,90,100,95,80};
	int sum = 0;
	for(int i = 0; i<scores.length;i++){
		sum+=scores[i];
	}
	double average = sum / (double)scores.length;
	
	
%>
<div>점수들의 평균은 <%=average %>입니다.</div>



<h3>2.채점결과</h3>

<% 
	List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
	int total = 0;
	for(String ox:scoreList){
		if(ox.equals("O")){
			total += scoreList.size()/100;
		}
		
	}

%>

<div> 채점 결과는 <%=total %>점 입니다.</div>


<!-- 3. 1부터 n까지의 합계를 구하는 함수
jsp의 선언문 <%! %> 문법을 사용해서 1부터 N까지의 합을 구하는 함수를 만드세요.
만든 함수를 이용해서 50까지의 합의 결과를 출력하세요.
-->
<h3>3. 1부터 n까지의 합계를 구하는 함수</h3>







<h3>4. 나이 구하기</h3>

<% 
	String birthday = "20010820";
	int year = Integer.parseInt(birthday.substring(0,4));
	int age = 2023- year +1;
%>
<div><%=birthday %>의 나이는 <%=age %>살입니다.</div>







</body>
</html>