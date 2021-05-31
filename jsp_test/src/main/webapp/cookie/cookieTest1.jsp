<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	Cookie c=new Cookie("name","hong");
    c.setMaxAge(600); //유효시간
    response.addCookie(c); //응답하는 응담객체
     
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<a href="cookieTest2.jsp">쿠키 불러오기</a>
</body>
</html>