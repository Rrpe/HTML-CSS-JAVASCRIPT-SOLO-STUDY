<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>session.jsp</title>
</head>

<body>
<h2>session ����</h2>
<hr>
<%
	// isNew() �޼��带 �̿��� ���ʼ��Ǽ����� Ȯ���ϰ� �ִ�.
	if(session.isNew()) {
		out.println("<script> alert('������ �����Ǿ� �ٽü����մϴ�.')</script>");
		session.setAttribute("login", "ȫ�浿");
	}
%>

# <%= session.getAttribute("login") %><br>
1. ���� ID : <%= session.getId() %><br>
2. ���� �����ð� : <%= session.getMaxInactiveInterval() %><br>

</body>
</html>