<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//한글 인코딩 처리
	request.setCharacterEncoding("utf-8");


	//info.jsp에서 사용자 입력값 가져오기
	String  userid=request.getParameter("userid");
	String  password=request.getParameter("password");
	
	
	//request 영역에 담기
	request.setAttribute("userid_req", userid);
	
	//userid => session 영역에 담기
	session.setAttribute("userid", userid);
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
	<li>사용자 비밀번호 : <%=password %></li>
</ul>
<a href="member.jsp">member 페이지</a>
</body>
</html>







