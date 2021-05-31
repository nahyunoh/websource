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
	response.addCookie(new Cookie("name","john"));
	response.addCookie(new Cookie("gender","male"));
	response.addCookie(new Cookie("age","30"));
%>
<h3>쿠키 데이터가 저장되었습니다.</h3>
<a href="getCookie1.jsp">쿠키 확인</a>
</body>
</html>