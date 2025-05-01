<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.Arrays"%>
<%@ page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>practice01</title>
</head>
<body>

	<%
	int[] scores = { 80, 90, 100, 95, 80 };
	int sum = 0;
	for (int i = 0; i < 5; i++) {
		sum += scores[i];
	}
	double average = (double) sum / 5;
	%>

	<h3>
		점수 평균은
		<%=average%>
		입니다.
	</h3>

	<%
	List<String> scoreList = Arrays.asList(new String[] { "X", "O", "O", "O", "X", "O", "O", "O", "X", "O" });
	int score = 0;
	for (String mark : scoreList) {
		if (mark.equals("O")) {
			score += 10;
		}
	}
	%>

	<h3>
		채점 결과는
		<%=score%>점 입니다.
	</h3>

	<%!public int sumToN(int N) {
		int result = 0;
		for (int i = 1; i <= N; i++) {
			result += i;
		}
		return result;
	}%>

	<h3>
		1에서 50까지의 합은
		<%=sumToN(50)%>
		</h3>


	<%
	String birthDay = "20010820";
	int year = Integer.parseInt(birthDay.substring(0, 4));
	int age = 2025 - year + 1;
	%>

	<h3>
		20010820 의 나이는
		<%=age%>살 입니다.
	</h3>
</body>
</html>