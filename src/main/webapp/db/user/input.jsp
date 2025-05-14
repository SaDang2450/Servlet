<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사용자 추가</title>
</head>
<body>

	<div>
		<form method="post" action="/db/user/create">
			<label>이름 : </label> <input type="text" name="name" autocomplete="off"> <br>
			<label>생년월일 : </label> <input type="text" name="birthday" autocomplete="off"> <br>
			<label>이메일 : </label> <input type="text" name="email" autocomplete="off"> <br>
			<label>자기소개 : </label> <br>
			<textarea rows="5" cols="40" name="introduce" autocomplete="off"></textarea> <br>
			<button type="submit">추가</button>
		</form>
	</div>

</body>
</html>