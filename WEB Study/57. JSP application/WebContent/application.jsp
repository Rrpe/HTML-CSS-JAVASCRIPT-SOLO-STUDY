<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>application.jsp</title>
</head>

<body>
<h2>application 예제</h2>
<hr>
1. 서버정보 : <%= application.getServerInfo() %><br>
2. 서블릿 API 버전 정보 : <%= application.getMajorVersion()+"."+application.getMinorVersion() %>
3. application.jsp 파일의 실제 경로 : <%= application.getRealPath("application.jsp") %>

<hr>
setAttribute 로 username 변수에 "홍길동" 설정<p>
<%
	application.setAttribute("username", "홍길동");
	application.log("username=홍길동");
	application.setAttribute("count", 1);
	
%>

<a href="application_result.jsp">확인하기</a>

</body>
</html>