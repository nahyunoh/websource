<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>영역 테스트</h3>
<form action="requestScope.jsp" method="post">
<table>
	<tr>
		<td>이름</td>
		<td><input type="text" name="username" /></td>
	</tr>
	<tr>
		<td>아이디</td>
		<td><input type="text" name="userid" /></td>
	</tr>
	<tr>
		<td colspan="2"><input type="submit" name="submit" /></td>
	</tr>
</table>
</form>
</body>
</html>