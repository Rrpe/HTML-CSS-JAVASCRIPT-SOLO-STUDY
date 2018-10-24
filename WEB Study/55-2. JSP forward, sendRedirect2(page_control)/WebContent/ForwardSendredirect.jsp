<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>ForwardSendredirect.jsp</title>
</head>
<body>
<h2>forward, sendRedirect 테스트</h2>
<br>
<hr>
<br>
<form method="post" action="forward_action2.jsp">
<div>
	forward action : <input type="text" value=" " name="username" />
	<input type="submit" value="확인"/>
</div>
</form>
<br>
<form method="post" action="response_sendRedirect.jsp">
<div>
	respons.sendRedirect : <input type="text" value=" " name="username" />
	<input type="submit" value="확인"/>
</div>
</form>
</body>
</html>