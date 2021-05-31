<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>pageContext</h1>
<%
	pageContext.include("page_include.jsp");
	int i=0;
%>
<footer>
<address>서울시 종로구</address></footer>
</body>
</html>