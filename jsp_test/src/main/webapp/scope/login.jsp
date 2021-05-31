<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3><%= session.getAttribute("name")%></h3> <!-- 세션에 담긴 값 어딜가든 받아옴 -->
</body>
</html>