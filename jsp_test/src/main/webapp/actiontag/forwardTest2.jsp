<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>포워드 된 페이지</h3>
<ul>
	<li>아이디 : <%=request.getParameter("userid") %></li>
	<li>비밀번호 : <%=request.getParameter("password") %></li>
	<li>전화번호 : <%=request.getParameter("tel") %></li>
</ul>
</body>
</html>