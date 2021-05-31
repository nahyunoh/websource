<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<ul>
	<li>아이디 : <%=request.getAttribute("userid")%></li>
	<li>주소 : <%=session.getAttribute("addr")%></li>
	<li>전화번호 : <%=session.getAttribute("tel") %></li>
	<li>이메일 : <%=session.getAttribute("email") %></li>
</ul>
</body>
</html>