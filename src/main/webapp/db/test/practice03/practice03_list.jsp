<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.sadang.common.MysqlService"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Practice03_list</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<link rel="stylesheet"
	href="/db/test/practice03/style.css">
</head>
<body>

	<%
	MysqlService mysqlService = MysqlService.getInstance();
	mysqlService.connect();
	
	List<Map<String, Object>> resultList = mysqlService.select("SELECT image, title, price, nickname FROM `seller` JOIN `used_goods` ON seller.id = used_goods.sellerId;");
	
	mysqlService.disconnect();
	%>
	
	<div class="container">
		<header class="d-flex align-items-center justify-content-center text-white display-4 font-weight-bold" style="height:100px; background-color:darkorange;"> HONG당무 마켓</header>
		<nav class="d-flex align-items-center" style="height:80px; background-color:darkorange;">
			<ul class="nav nav-fill w-100">
				<li class="nav-item"><a class="nav-link text-white font-weight-bold h3" href="#">리스트</a></li>
				<li class="nav-item"><a class="nav-link text-white font-weight-bold h3" href="#">물건 올리기</a></li>
				<li class="nav-item"><a class="nav-link text-white font-weight-bold h3" href="#">마이 페이지</a></li>
			</ul>
		</nav>
		<section class="p-2 row" style="">
		<%	int count = 1;
			for(Map<String, Object> result:resultList) { %> 
			<div style="border:solid; border-color:darkorange;" class="m-2 p-2 col item-box">
				<div id="image" style="width:100%; aspect-ratio:16/10; background-color:white"><img alt="이미지 없음" src="<%= result.get("image")%>" style="width:100%; height:100%; object-fit: cover; object-position: 50%; "></div>
				<div id="title"><label class="h4 mt-3 font-weight-bold"><%= result.get("title") %></label></div>
				<div id="price"><label style="font-size:20px; color:gray;"><%= result.get("price") %></label></div>
				<div id="uploader"><label style="fons-size:20px; color:darkorange" class="font-weight-bold"><%= result.get("nickname") %></label></div>			
			</div>
		<%		if(count % 3 == 0) { %>
			<div class="w-100"></div>
		<%		}
			count++;
				if(count > 6) {break;}
			} 
			while(count % 3 != 1) { %>
			<div style="border:solid; visibility:hidden;" class="m-2 p-2 col"></div>				
		<%	count++;
			}
		%>
		</section>
		<footer class="text-secondary text-center">Copyright 2019. HONG All Rights Reserved.</footer>
	</div>
	
</body>
</html>