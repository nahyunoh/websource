<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String name="",value="";
	String cookie=request.getHeader("cookie");
	
	if(cookie!=null){
		Cookie cookies[]=request.getCookies();
		for(Cookie c:cookies){
			if(c.getName().equals("name")){
				name=c.getName();
				value=c.getValue();
			}
		}
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>쿠키 이름 : <%=name %></h3>
<h3>쿠키 값 : <%=value %></h3>
</body>
</html>