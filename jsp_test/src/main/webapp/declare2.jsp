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
		int total=0;
	for(int i=1;i<=200;i++){
			total+=i;
	}
	%>
	<h3>1~200까지 합 : <%=total %></h3>
	<h3>1~200까지 합 : <% out.print(total); %></h3>
</body>
</html>