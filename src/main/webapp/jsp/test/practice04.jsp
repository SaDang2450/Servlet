<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>practice04</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
	integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
	crossorigin="anonymous">
</head>
<body>

	<%
	double number1 = Double.parseDouble(request.getParameter("number1")); 
	String operator = request.getParameter("operator");
	String operatorOut;
	double number2 = Double.parseDouble(request.getParameter("number2"));
	double result = 0;
	
	switch (operator) {
	case "+":
		result = number1 + number2;
		break;
	case "-":
		result = number1 - number2;
		break;
	case "X":
		result = number1 * number2;
		break;
	case "÷":
		result = number1 / number2;
	
	}
	%>
	<div class="container">
	<h1>계산결과</h1><br>
	<h1><%=number1 %> <%=operator %><%=number2 %> = <label class="text-primary"><%= result %></label></h1>
	</div>
</body>
</html>