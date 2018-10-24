<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>application_result.jsp</title>
</head>

<body>

	<h2>application_result 예제</h2>
	<hr>
	
	
	<h2>
	<% int cnt = (int)application.getAttribute("count");  %>
	<%= cnt%>
	<% application.setAttribute("count", ++cnt);%>
	</h2>

</body>
</html>