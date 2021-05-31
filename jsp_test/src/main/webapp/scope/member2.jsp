<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>member</h3>
<p>	
	<%--request 에 담긴 정보 가져오기 --%>
	아이디 request : <%=request.getAttribute("userid_req") %>
</p>
</body>
</html>