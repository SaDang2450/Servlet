<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>practice04-input</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
	integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
	crossorigin="anonymous">
</head>
<body>

	<div class="container">
		<form method="post" action="/jsp/test/practice04.jsp">
			<h1>사칙연산</h1>
			<div class="d-flex">
				<input type="text" name="number1" class="form-control col-2 ">
				<select	class="form-control col-1 ml-2" name="operator" autocomplete="off">
					<option value="+">+</option>
					<option value="-">-</option>
					<option value="X">X</option>
					<option value="÷">÷</option>
				</select> <input type="text" name="number2" class="form-control col-2 ml-2">
				<button type="submit" class="btn btn-success ml-2">계산</button>
			</div>

		</form>
	</div>
</body>
</html>