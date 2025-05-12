<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>practice10</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
</head>
<body>
	<%
	//아티스트 정보 

	Map<String, Object> artistInfo = new HashMap<>();
	artistInfo.put("name", "아이유");
	artistInfo.put("debute", 2008);
	artistInfo.put("agency", "EDAM엔터테인먼트");
	artistInfo.put("photo", "https://musicmeta-phinf.pstatic.net/artist/000/112/112579.jpg?type=ff300_300");

	//아이유 노래 리스트 
	List<Map<String, Object>> musicList = new ArrayList<>();

	Map<String, Object> musicInfo = new HashMap<>();
	musicInfo.put("id", 1);
	musicInfo.put("title", "팔레트");
	musicInfo.put("album", "Palette");
	musicInfo.put("singer", "아이유");
	musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/002/000/2000240.jpg?type=r360Fll");
	musicInfo.put("time", 217);
	musicInfo.put("composer", "아이유");
	musicInfo.put("lyricist", "아이유");
	musicList.add(musicInfo);

	musicInfo = new HashMap<>();
	musicInfo.put("id", 2);
	musicInfo.put("title", "좋은날");
	musicInfo.put("album", "Real");
	musicInfo.put("singer", "아이유");
	musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/000/184/184117.jpg?type=r360Fll");
	musicInfo.put("time", 233);
	musicInfo.put("composer", "이민수");
	musicInfo.put("lyricist", "김이나");
	musicList.add(musicInfo);

	musicInfo = new HashMap<>();
	musicInfo.put("id", 3);
	musicInfo.put("title", "밤편지");
	musicInfo.put("album", "palette");
	musicInfo.put("singer", "아이유");
	musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/002/000/2000240.jpg?type=r360Fll");
	musicInfo.put("time", 253);
	musicInfo.put("composer", "제휘,김희원");
	musicInfo.put("lyricist", "아이유");
	musicList.add(musicInfo);

	musicInfo = new HashMap<>();
	musicInfo.put("id", 4);
	musicInfo.put("title", "삐삐");
	musicInfo.put("album", "삐삐");
	musicInfo.put("singer", "아이유");
	musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/002/559/2559408.jpg?type=r360Fll");
	musicInfo.put("time", 194);
	musicInfo.put("composer", "이종훈");
	musicInfo.put("lyricist", "아이유");
	musicList.add(musicInfo);

	musicInfo = new HashMap<>();
	musicInfo.put("id", 5);
	musicInfo.put("title", "스물셋");
	musicInfo.put("album", "CHAT-SHIRE");
	musicInfo.put("singer", "아이유");
	musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/000/592/592471.jpg?type=r360Fll");
	musicInfo.put("time", 194);
	musicInfo.put("composer", "아이유,이종훈,이채규");
	musicInfo.put("lyricist", "아이유");
	musicList.add(musicInfo);

	musicInfo = new HashMap<>();
	musicInfo.put("id", 6);
	musicInfo.put("title", "Blueming");
	musicInfo.put("album", "Love poem");
	musicInfo.put("singer", "아이유");
	musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/003/399/3399860.jpg?type=r360Fll");
	musicInfo.put("time", 217);
	musicInfo.put("composer", "아이유,이종훈,이채규");
	musicInfo.put("lyricist", "아이유");
	musicList.add(musicInfo);
	%>

	<%
		String searchInput = request.getParameter("searchInput");
		String songId = request.getParameter("songId");
	%>
	
	<div class="container">
		<form method="get" action="/jsp/test/practice10.jsp">
			<header class="d-flex">
				<div id="logo" class="col-2  h1 d-flex align-items-center"><a href="/jsp/test/practice10.jsp" class="text-success">Melong</a></div>
				<div id="search" class="col-5 d-flex align-items-center">
					<div class="input-group">
						<input type="text" class="form-control"	aria-describedby="button-addon2" name="searchInput" autocomplete="off">
						<div class="input-group-append">
							<button id="searchBtn" type="submit" class="btn btn-outline-secondary bg-info text-white">검색</button>
						</div>
					</div>
				</div>
			</header>
		</form>
		<nav class="d-flex align-items-center">
			<ul class="nav align-items-center">
				<li class="nav-item"><a href="#"
					class="nav-link h5 font-weight-bold text-dark">멜롱챠트</a></li>
				<li class="nav-item"><a href="#"
					class="nav-link h5 font-weight-bold text-dark">최신음악</a></li>
				<li class="nav-item"><a href="#"
					class="nav-link h5 font-weight-bold text-dark">장르음악</a></li>
				<li class="nav-item"><a href="#"
					class="nav-link h5 font-weight-bold text-dark">멜롱DJ</a></li>
				<li class="nav-item"><a href="#"
					class="nav-link h5 font-weight-bold text-dark">뮤직어워드</a></li>
			</ul>
		</nav>
		<section>
			<article class="border border-success d-flex">	
				<%
					if(songId == null && searchInput == null) {
				%>
				<div>
					<img alt="photo"
						src="https://musicmeta-phinf.pstatic.net/artist/000/112/112579.jpg?type=ff300_300"
						style="height: 210px" class="m-3">
				</div>
				<div class="mt-3">
					<div style="font-size: 35px">아이유</div>
					<div style="font-size: 20px">EDAM엔터테인먼트</div>
					<div style="font-size: 20px">2008 데뷔</div>
				</div>
			</article>
			<article>
				<div class="h3 mt-3">곡 목록</div>
				<div>
					<table class="table text-center">
						<thead>
							<tr>
								<th class="col-2">no</th>
								<th class="col-4">제목</th>
								<th class="col-6">앨범</th>
							</tr>
						</thead>
						<tbody>
					<%
						for (Map<String, Object> music : musicList) {
					%>					
							<tr>
								<td><%=music.get("id")%></td>
								<td><a href="/jsp/test/practice10.jsp?songId=<%= music.get("id")%>"><%=music.get("title")%></a></td>
								<td><%=music.get("album")%></td>
							</tr>
							<%
						}	
							%>
						</tbody>
					</table>
				</div>
				
				<%
					} else {
						for(Map<String, Object> music : musicList) {
							if(music.get("id").toString().equals(songId) || music.get("title").toString().equals(searchInput)) {
				%>
				<div>
					<img alt="album : <%= music.get("album")%>" src="<%= music.get("thumbnail") %>" style="height: 210px" class="m-3">
				</div>
				<div class="mt-3">
					<div style="font-size: 35px"> <%= music.get("title") %></div>
					<div style="font-size: 15px" class="text-success font-weight-bold"> <%= music.get("singer") %></div>
					<table style="font-size: 15px" class="text-secondary">
						<thead>
							<tr style="height:10px">
								<td style="width:80px"></td>
								<td style="width:60px"></td>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>앨범</td>
								<td><%= music.get("album") %></td>
							</tr>
							<tr>
								<td>재생시간</td>
								<td class="text-dark"><%= Integer.parseInt(music.get("time").toString()) / 60 %> : <%= Integer.parseInt(music.get("time").toString()) % 60 %></td>
							</tr>
							<tr>
								<td>작곡가</td>
								<td><%= music.get("composer") %></td>
							</tr>
							<tr>
								<td>작사가</td>
								<td><%= music.get("lyricist") %></td>
							</tr>
						</tbody>
					</table>
				</div>
			</article>
			<article>
				<div class="h3 mt-3">가사</div>
				<hr>
				<div><%= music.get("title") %></div> <br>
				<div>가사 정보 없음</div>				
				<%
							}
						}
					}
				%>
			</article>
		</section>
		<footer id="footer" class="text-secondary" style="heigth: 70px">
			<hr>
			Copyright 2021. melong All Rights Reserved.
		</footer>
	</div>

</body>
</html>