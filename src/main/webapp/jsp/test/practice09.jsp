<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Practice09</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
	integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
	crossorigin="anonymous">
</head>
<body>
	<%
	List<Map<String, String>> list = new ArrayList<>();
	Map<String, String> map = new HashMap<String, String>() {
		{
			put("ch", "5");
			put("name", "SBS");
			put("category", "지상파");
		}
	};
	list.add(map);
	map = new HashMap<String, String>() {
		{
			put("ch", "7");
			put("name", "KBS2");
			put("category", "지상파");
		}
	};
	list.add(map);
	map = new HashMap<String, String>() {
		{
			put("ch", "9");
			put("name", "KBS1");
			put("category", "지상파");
		}
	};
	list.add(map);
	map = new HashMap<String, String>() {
		{
			put("ch", "11");
			put("name", "MBC");
			put("category", "지상파");
		}
	};
	list.add(map);

	map = new HashMap<String, String>() {
		{
			put("ch", "54");
			put("name", "OCN");
			put("category", "영화");
		}
	};
	list.add(map);
	map = new HashMap<String, String>() {
		{
			put("ch", "56");
			put("name", "Screen");
			put("category", "영화");
		}
	};
	list.add(map);
	map = new HashMap<String, String>() {
		{
			put("ch", "57");
			put("name", "Mplex");
			put("category", "영화");
		}
	};
	list.add(map);

	map = new HashMap<String, String>() {
		{
			put("ch", "30");
			put("name", "KBS 드라마");
			put("category", "드라마");
		}
	};
	list.add(map);
	map = new HashMap<String, String>() {
		{
			put("ch", "32");
			put("name", "MBC 드라마");
			put("category", "드라마");
		}
	};
	list.add(map);
	map = new HashMap<String, String>() {
		{
			put("ch", "34");
			put("name", "Olive");
			put("category", "드라마");
		}
	};
	list.add(map);

	map = new HashMap<String, String>() {
		{
			put("ch", "3");
			put("name", "tvN");
			put("category", "예능");
		}
	};
	list.add(map);
	map = new HashMap<String, String>() {
		{
			put("ch", "28");
			put("name", "MBC Every1");
			put("category", "예능");
		}
	};
	list.add(map);
	map = new HashMap<String, String>() {
		{
			put("ch", "48");
			put("name", "JTBC2");
			put("category", "예능");
		}
	};
	list.add(map);
	map = new HashMap<String, String>() {
		{
			put("ch", "49");
			put("name", "E채널");
			put("category", "예능");
		}
	};
	list.add(map);

	map = new HashMap<String, String>() {
		{
			put("ch", "120");
			put("name", "SPOTV");
			put("category", "스포츠");
		}
	};
	list.add(map);
	map = new HashMap<String, String>() {
		{
			put("ch", "121");
			put("name", "KBSN 스포츠");
			put("category", "스포츠");
		}
	};
	list.add(map);
	%>
	
	<%
		String category = request.getParameter("category");
	%>

	<div id="wrap" class="container text-center">
		<header class="d-flex align-items-center justify-content-center"
			style="height: 80px">
			<label class="h1 font-weight-bold text-danger">SK broadband
				IPTV</label>
		</header>
		<nav class="bg-danger d-flex align-items-center" style="height: 50px">
			<ul class="nav nav-fill w-100">
				<li class="nav-item"><a class="nav-link text-white" href="/jsp/test/practice09.jsp">전체</a></li>
				<li class="nav-item"><a class="nav-link text-white" href="/jsp/test/practice09.jsp?category=지상파">지상파</a></li>
				<li class="nav-item"><a class="nav-link text-white" href="/jsp/test/practice09.jsp?category=드라마">드라마</a></li>
				<li class="nav-item"><a class="nav-link text-white" href="/jsp/test/practice09.jsp?category=예능">예능</a></li>
				<li class="nav-item"><a class="nav-link text-white" href="/jsp/test/practice09.jsp?category=영화">영화</a></li>
				<li class="nav-item"><a class="nav-link text-white" href="/jsp/test/practice09.jsp?category=스포츠">스포츠</a></li>
			</ul>
		</nav>
		<section class="">
			<table class="table">
				<thead>
					<tr>
						<th class="col-3">채널</th>
						<th class="col-6">채널명</th>
						<th class="col-3">카테고리</th>
					</tr>
				</thead>
				<tbody>
					<%
						for(Map<String, String> program : list) { 
							if(category == null || program.get("category").equals(category)) {
					%>			
					<tr>
						<td><%= program.get("ch") %></td>
						<td><%= program.get("name") %></td>
						<td><%= program.get("category") %></td>
					</tr>		
					<%
							}	
						}
					%>
				</tbody>
			</table>
			
		</section>
		<footer style="height: 30px">Copyright 2021. marondal All Rights Reserved.</footer>
	</div>

</body>
</html>