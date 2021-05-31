<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    //session 유효시간 설정
    session.setMaxInactiveInterval(10); //초
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>세션 테스트</h2>
	<ul>
	<li>isNew() : <%=session.isNew() %></li>
	<li>생성시간 : <%=session.getCreationTime() %></li>
	<li>최종접속시간 : <%=session.getLastAccessedTime() %></li>
	<li>세션ID : <%=session.getId() %></li>
	</ul>
</body>
</html>