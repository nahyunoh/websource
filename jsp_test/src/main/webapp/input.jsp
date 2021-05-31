<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	//한글 인코딩 처리
    	request.setCharacterEncoding("utf-8");
    
    	//request.jsp에서 보낸 값을 가져오기 (사용자 입력값)
    	String userid=request.getParameter("userid");
    	String password=request.getParameter("password");
 
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<ul>
	<li>사용자 아이디 : <%=userid %></li>
	<li>사용자 비밀번호 : <%= password %></li>
	</ul>
</body>
</html>