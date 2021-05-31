<%@page import="domain.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	/*User user=new User();
	user.setName("홍길동");*/
%>
<jsp:useBean id="user" class="domain.User"/>
<jsp:setProperty property="name" name="user" value="홍길동"/>
<h3><%=user.getName() %></h3>
</body>
</html>