<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	//비밀번호 가져오기
    	String password=request.getParameter("password");
    	//전화번호 가져오기
    	String tel=request.getParameter("tel");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<ul>
<li>비밀번호 : <%=password %></li>
<li>전화번호 : <%=tel %></li>
</ul>
</body>
</html>