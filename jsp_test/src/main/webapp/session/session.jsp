<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>세션 정보</h1>
<hr />
<h2>세션 주요 정보 조회</h2>
<ul>
	<li>세션 ID(유일한 식별자) : <%=session.getId() %></li>
	<li>세션 유효시간 : <%=session.getMaxInactiveInterval()%></li>
	<%
		long millsecond = session.getCreationTime();
		Date time=new Date(millsecond);
	%>
	<li>세션 생성시간(1970년 1월 1일 0시 이후의 밀리세컨드) : <%=millsecond%></li>
	<%
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy.MM.dd a hh:mm:ss");
	%>
	<li>세션 생성시간(다시 계산) : <%=sdf.format(time) %></li>
	
</ul>
</body>
</html>