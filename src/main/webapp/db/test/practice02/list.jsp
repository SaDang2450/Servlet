<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.sadang.common.MysqlService"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>practice02_list</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
</head>
<body>

	<%
	MysqlService mysqlService = MysqlService.getInstance();

	mysqlService.connect();
	List<Map<String, Object>> resultList = mysqlService.select("SELECT * FROM `bookmark` ORDER BY `id` DESC");

	mysqlService.disconnect();
	%>

	<div class="container">
		<table class="table text-center">
			<thead>
				<tr>
					<th class="col-4">사이트</th>
					<th class="col-6">사이트 주소</th>
					<th class="col-2">삭제</th>
				</tr>
			</thead>
			<tbody>
				<%	for(Map<String, Object> result : resultList) { %>
				<tr>
					<td><%= result.get("name") %></td>
					<td><a href="<%= result.get("url") %>" target="_blank"><%= result.get("url") %></a></td>
					<td class="col-2"><a href="/db/test/practice02?id=<%= result.get("id") %>"><button class="btn btn-success">삭제</button></a></td>
				<tr>
				<%	} %>
			</tbody>
		</table>
	</div>

</body>
</html>