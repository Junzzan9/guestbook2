<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="java.util.List"%>
<%@ page import="com.javaex.vo.GuestBookVo"%>

<%
List<GuestBookVo> gbList = (List<GuestBookVo>) request.getAttribute("gbList");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="/guestbook2/gbc" method="post">
		<table border="1">
			<colgroup>
				<col style="width: 40px;">
				<col style="width: 120px;">
				<col style="width: 80px;">
				<col style="width: 120px;">
			</colgroup>
			<tr>
				<td>이름</td>
				<td><input type="text" name="name" value=""></td>
				<td>비밀번호</td>
				<td><input type="password" name="pw" value=""></td>
			</tr>
			<tr>
				<td colspan="4" rowspan="3" height="120px"><input type="text"
					name="content" value=""></td>
			</tr>
			<tr>
				<td><input type="hidden" name="action" value="add"></td>
				<td colspan="4"><button type="submit">등록</button></td>
			</tr>

		</table>
	</form>
	<%
	for (int i = 0; i < gbList.size(); i++) {
	%>

	<table border="1">
		<colgroup>
			<col style="width: 30px;">
			<col style="width: 90px;">
			<col style="width: 300px;">
			<col style="width: 60px;">
		</colgroup>
		<tr>
			<td><%=gbList.get(i).getNo()%></td>
			<td><%=gbList.get(i).getName()%></td>
			<td><%=gbList.get(i).getDate()%></td>
			<td><form action="/guestbook2/gbc" method="get">
					<input type="hidden" name="action" value="dform"> <input
						type="hidden" name="dId" value="<%=gbList.get(i).getNo()%>">
					<button type="submit">[삭제]</button>
				</form></td>
		</tr>
		<tr>
			<td colspan="4"><%=gbList.get(i).getContent()%></td>
		</tr>

	</table>

	<br>

	<%
	}
	%>
</body>
</html>