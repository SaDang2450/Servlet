<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>practice05</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
	integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
	crossorigin="anonymous">
</head>
<body>

	<%
		int number = Integer.parseInt(request.getParameter("number"));
		
		double in = (double)number * 0.393701;
		double yd = (double)number * 0.010936;
		double ft = (double)number * 0.032808;
		double m = (double)number * 0.01;
		
		String[] measures = request.getParameterValues("measure");
		
		Map<String, Double> measuresMap = new HashMap<String, Double>(); 
		measuresMap.put("in", in);
		measuresMap.put("yd", yd);
		measuresMap.put("ft", ft);
		measuresMap.put("m", m);
		
	%>

	<div class="container">
		<h1>변환 결과</h1>
		<h2><%= number %> cm</h2>
		<hr>
		
		<%
		for(int i = 0 ; i < measures.length; i++) {				
		%>
		
			<h2> <%= measuresMap.get(measures[i])%> <%= measures[i] %></h2>
			
		<%
			}
		%>
	</div>
</body>
</html>