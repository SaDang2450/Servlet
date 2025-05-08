<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Practice07-input</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
	integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
	crossorigin="anonymous">
</head>
<body>
	
	<div class="container">
		<h1>메뉴검색</h1>
		
		<form method="post" action="/jsp/test/practice07.jsp">
			<div class="d-flex align-items-center mt-3">
				<input type="text" name="searchInput" class="form-control col-2 mr-3 " autocomplete="off">
				<label><input type="checkbox" name="minPoint" value="4" autocomplete="off"> 4점 이하 제외</label>
			</div>
			<button type="submit" class="btn btn-success mt-3">검색</button>
		</form>
	</div>
</body>
</html>