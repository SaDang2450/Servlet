<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>practice05-input</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
	integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
	crossorigin="anonymous">
</head>
<body>

	<div class="container">
		<h1>길이 변환</h1>
		<form method="post" action="/jsp/test/practice05.jsp">
			<div class="d-flex align-items-end mb-2">
				<input type="text" class="form-control col-2 mr-2" name="number"> <label>cm</label> <br>
			</div>
			
			<label>인치 <input type="checkbox" name="measure" value="in" autocomplete="off" ></label>
			<label>야드 <input type="checkbox" name="measure" value="yd" autocomplete="off" ></label>
			<label>피트 <input type="checkbox" name="measure" value="ft" autocomplete="off" ></label>
			<label>미터 <input type="checkbox" name="measure" value="m" autocomplete="off" ></label>
			
			<br>
			<button type="submit" class="btn btn-success">변환</button>		
		</form>
	</div>
</body>
</html>