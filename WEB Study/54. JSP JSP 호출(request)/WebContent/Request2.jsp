<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<%	request.setCharacterEncoding("utf-8");	%>
<title>Request 테스트 폼</title>
</head>

<body>
<% String nname = request.getParameter("my_name"); %>
<% String oobject = request.getParameter("object"); %>
<%String[] param = request.getParameterValues("hobby"); %>
<center>
<br>
<h2>Request 테스트 폼</h2><hr>
<table style="border-collapse: collapse;" border="1" cellpadding="5px" padding="50">
<tr>
	<td>
		이름:
	</td>
	<td>
		<%= nname %>
	</td>
</tr>
<tr>
	<td>
		직업:
	</td>
	<td>
		<%= oobject %>
	</td>
</tr>
<tr>
	<td>
		관심분야:
	</td>
	<td>
	<%for(int i=0; i<param.length; i++){ %>
       <%=param[i] %>
   <%} %>
	</td>
</tr>
</table>
<hr>
<h2>request 테스트 결과 - 2</h2>
<table border=0>
	<tr>
		<td>
		1. 클라이언트 IP 주소 : <%= request.getRemoteAddr() %><br>
		2. 요청 메서드 : <%= request.getMethod() %><br>
		<%
			Cookie cookie[] = request.getCookies();
		%>
		3. <%= cookie[0].getName() %> 에 설정된 쿠키값 : <%= cookie[0].getValue() %><br>
		4. 프로토콜 : <%= request.getProtocol() %>
		</td>
	</tr>
</table>
</center>

</body>
</html>