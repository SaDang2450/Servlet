<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 기본 문법</title>
</head>
<body>

	<h3>기본 문법</h3>
	<!-- html 주석 -->
	<%-- jsp 주석 --%>

	<%-- 1부터 10까지 합을 h3태그로 표시 --%>
	<%
	int sum = 0;
	for (int i = 1; i <= 10; i++) {
		sum += i;
	}

	// 주석 : jsp 내장 객체로 response.getWriter() 등 존재 >> out = response.getWriter().out
	//	out.println("<h3>합계 : " + sum + " </h3>");
	%>

	<h3>
		합계 :
		<%=sum%></h3>
	<input type="text" value="<%=sum == 4%>">
	<!-- jsp 내의 변수로부터 값을 가져와 표현하기 위해서는 "%=" 사용 -->

	<h3>리스트 다루기</h3>

	<%
	// 동물이름 리스트
	List<String> animals = new ArrayList<String>();

	animals.add("고양이");
	animals.add("강아지");
	%>
	<!-- jsp 내에서 사용될 Class 는 문서 최상단에 page import= 코드 필요 -->
	<ul>
		<li><%=animals.get(0)%></li>
		<li><%=animals.get(1)%></li>
	</ul>

	<h3>메소드 만들기</h3>
	<!-- method 선언을 위해서는 %! 사용 필요 -->
	<%!public String getHelloWorld() {
		return "Hello World!";
	}%>
	
	<%String message = getHelloWorld(); %>
	
	<h3><%=message %> 변수 return</h3>
	<h3><%=getHelloWorld() %> 메소드 return</h3>

</body>
</html>