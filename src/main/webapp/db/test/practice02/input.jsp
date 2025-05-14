<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Practice02_input</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
</head>
<body>
	<div class="container">
		<h1 class="mt-3">즐겨찾기 추가</h1>
		<form method="post" action="/db/test/practice02">
			<label>사이트명:</label><br>
			<input type="text" class="form-control col-4" name="name" autocomplete="off">
			<label>사이트 주소:</label>
			<input type="text" class="form-control col-6" name="url" autocomplete="off">
			<button type="submit" class="btn btn-success mt-3">추가</button>
		</form>
	</div>
</body>
</html>