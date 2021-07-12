<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%
String dId = request.getParameter("dId");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="/guestbook2/gbc" method="post">
		비밀번호: <input type="password" name="dPw" value=""> 
		<input type="hidden" name="dId" value="<%=dId%>">
		<input type="hidden" name="action" value="delete">
		<button type="submit">등록</button>
	</form>
</body>
</html>