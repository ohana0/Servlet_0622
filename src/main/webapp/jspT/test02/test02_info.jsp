<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.List" %>    
<%@ page import="java.util.Map" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>정보</title>
<link rel="stylesheet" href="style.css" type="text/css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

</head>
<body>
	<div id="wrapper">
		<jsp:include page="header.jsp"/>
		<jsp:include page="menu.jsp"/>
		<section id="main-content">
	<%
		// 아티스트 정보 

	    Map<String, Object> artistInfo = new HashMap<>();
	    artistInfo.put("name", "아이유");
	    artistInfo.put("debute", 2008);
	    artistInfo.put("agency", "EDAM엔터테인먼트");
	    artistInfo.put("photo", "http://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/867/444/81867444_1616662460652_1_600x600.JPG");


	// 아이유 노래 리스트 
	    List<Map<String, Object>> musicList = new ArrayList<>();

	    Map<String, Object> musicInfo = new HashMap<>();
	    musicInfo.put("id", 1);
	    musicInfo.put("title", "팔레트");
	    musicInfo.put("album", "Palette");
	    musicInfo.put("singer", "아이유");
	    musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/b/b6/IU_Palette_final.jpg");
	    musicInfo.put("time", 217);
	    musicInfo.put("composer", "아이유");
	    musicInfo.put("lyricist", "아이유");
	    musicList.add(musicInfo);

	    musicInfo = new HashMap<>();
	    musicInfo.put("id", 2);
	    musicInfo.put("title", "좋은날");
	    musicInfo.put("album", "Real");
	    musicInfo.put("singer", "아이유");
	    musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/3/3c/IU_-_Real.jpg");
	    musicInfo.put("time", 233);
	    musicInfo.put("composer", "이민수");
	    musicInfo.put("lyricist", "김이나");
	    musicList.add(musicInfo);

	    musicInfo = new HashMap<>();
	    musicInfo.put("id", 3);
	    musicInfo.put("title", "밤편지");
	    musicInfo.put("album", "palette");
	    musicInfo.put("singer", "아이유");
	    musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/b/b6/IU_Palette_final.jpg");
	    musicInfo.put("time", 253);
	    musicInfo.put("composer", "제휘,김희원");
	    musicInfo.put("lyricist", "아이유");
	    musicList.add(musicInfo);

	    musicInfo = new HashMap<>();
	    musicInfo.put("id", 4);
	    musicInfo.put("title", "삐삐");
	    musicInfo.put("album", "삐삐");
	    musicInfo.put("singer", "아이유");
	    musicInfo.put("thumbnail", "https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/111/535/81111535_1539157728291_1_600x600.JPG");
	    musicInfo.put("time", 194);
	    musicInfo.put("composer", "이종훈");
	    musicInfo.put("lyricist", "아이유");
	    musicList.add(musicInfo);

	    musicInfo = new HashMap<>();
	    musicInfo.put("id", 5);
	    musicInfo.put("title", "스물셋");
	    musicInfo.put("album", "CHAT-SHIRE");
	    musicInfo.put("singer", "아이유");
	    musicInfo.put("thumbnail", "https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/080/724/877/80724877_1445520704274_1_600x600.JPG");
	    musicInfo.put("time", 194);
	    musicInfo.put("composer", "아이유,이종훈,이채규");
	    musicInfo.put("lyricist", "아이유");
	    musicList.add(musicInfo);

	    musicInfo = new HashMap<>();
	    musicInfo.put("id", 6);
	    musicInfo.put("title", "Blueming");
	    musicInfo.put("album", "Love poem");
	    musicInfo.put("singer", "아이유");
	    musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/6/65/%EC%95%84%EC%9D%B4%EC%9C%A0_-_Love_poem.jpg");
	    musicInfo.put("time", 217);
	    musicInfo.put("composer", "아이유,이종훈,이채규");
	    musicInfo.put("lyricist", "아이유");
	    musicList.add(musicInfo);
	    
	    
	    musicInfo = new HashMap<>();
	    musicInfo.put("id", 9999);
	    musicInfo.put("title", "검색된 음악이 없습니다.");
	    musicInfo.put("album", "");
	    musicInfo.put("singer", "");
	    musicInfo.put("thumbnail", "https://i.imgur.com/cliDn19.jpeg");
	    musicInfo.put("time", 0);
	    musicInfo.put("composer", "");
	    musicInfo.put("lyricist", "");
	    musicList.add(musicInfo);
	    
	    String getId = request.getParameter("id");
	    for(Map<String,Object> music:musicList){
	    	if(String.valueOf(music.get("id")).equals(getId)){
	    		musicInfo = music;
	    		
	    	}
	    	
	    }
	    String getTitle = request.getParameter("title");
	    for(Map<String,Object> music:musicList){
	    	if(String.valueOf(music.get("title")).equals(getTitle)){
	    		musicInfo = music;
	    		
	    	}
	    	
	    }
	    int time = (int)musicInfo.get("time");
	    String timeString=time/60 + ":" +time%60; 
	%>
			<!-- <h3 class="pt-4">곡 정보</h3> -->
				
			<article id="song-info" class="d-flex">
				<div class="song-image d-flex justify-content-center align-items-center">
					<img alt="<%=musicInfo.get("title") %>" src="<%=musicInfo.get("thumbnail")%>" width="180px">
				
				</div>
				<div class="pl-2">
					<h1 class="pt-2 mb-0"><%=musicInfo.get("title") %></h1>
					<div class="music-info-singer"><%=musicInfo.get("singer") %></div>
					<div class="d-flex">
						<div class="music-info-detail music-info-detail-font">앨범</div>
						<div class="music-info-detail-font"><%=musicInfo.get("album") %></div>
					</div>
					<div class="d-flex">
						<div class="music-info-detail music-info-detail-font">재생시간</div>
						<div class="music-info-detail-font"><%=timeString %></div>
					</div>
					<div class="d-flex">
						<div class="music-info-detail music-info-detail-font">작곡가</div>
						<div class="music-info-detail-font"><%=musicInfo.get("composer") %></div>
					</div>
					<div class="d-flex">
						<div class="music-info-detail music-info-detail-font">작사가</div>
						<div class="music-info-detail-font"><%=musicInfo.get("lyricist") %></div>
					</div>
				</div>
				
				
			</article>
			<article class="pt-4">
				<h3>가사</h3>
				<hr>
				<h6>가사 정보 없음</h6>
				<hr>
			</article>
		
		
		
		
		
		
		
		</section>
		<jsp:include page="footer.jsp"/>	
	</div>
	
	
	
	    <script src="https://code.jquery.com/jquery-3.7.0.js" integrity="sha256-JlqSTELeR4TLqP0OG9dxM7yDPqX1ox/HfgiSLBj8+kM=" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
 
</body>
</html>