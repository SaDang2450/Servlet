<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Post input</title>
</head>
<body>

	<form method="post" action="/jsp/ex/ex03.jsp">
		<label>닉네임 : </label> <input type="text" name="nickname">
		
		<!-- 라디오 버튼 -->
		<h4>좋아 하는 동물을 고르세요</h4>
		<label>고양이<input type="radio" name="animal" value="cat"  autocomplete="off" checked="checked"></label>
		<label>강아지<input type="radio" name="animal" value="dog"  autocomplete="off"></label>
		<label>사자<input type="radio" name="animal" value="lion" autocomplete="off" ></label>
		<br>
		
		<h4>좋아하는 과일을 고르세요</h4>
		<select name="fruit">
			<option value="banana">바나나</option>
			<option value="strawberry">딸기</option>
			<option>복숭아</option>
		</select>
		
		<h4> 좋아하는 과일을 고르세요 </h4>
		<label> 민트초코 <input type = "checkbox" name="food" value="mint" autocomplete="off"></label>
		<label> 하와이안 피자 <input type = "checkbox" name="food" value="pizza" autocomplete="off"></label>
		<label> 번데기 <input type = "checkbox" name="food" value="bug" autocomplete="off"></label>
		
		
		<br><button type="submit">입력</button>

	</form>
</body>
</html>