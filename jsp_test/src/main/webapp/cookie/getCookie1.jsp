<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%!
	private String getCookieValue(Cookie[] cookies, String name){
	if(cookies==null){
		return null;
	}
	for(Cookie c: cookies){
		if(c.getName().equals(name)){
			return c.getValue();
		}
	}
	return null;
}
%>
<%
	Cookie[] cookies=request.getCookies();
%>
<h3>이름 : <%=getCookieValue(cookies, "name") %></h3>
<h3>이름 : <%=getCookieValue(cookies, "gender") %></h3>
<h3>이름 : <%=getCookieValue(cookies, "age") %></h3>
</body>
</html>