<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//가져오는 값에 한글처리
	request.setCharacterEncoding("utf-8");

	//requestScope.jsp에서 사용자 입력값 가져오기
	String addr=request.getParameter("addr");
	String email=request.getParameter("email");
	String tel=request.getParameter("tel");

	//세션 영역에 가져온 세개의 값을 모두 담아주기
	session.setAttribute("addr", addr);
	session.setAttribute("email", email);
	session.setAttribute("tel", tel);
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3><%=request.getAttribute("userid") %> 님 정보가 모두 저장되었습니다.</h3>
<a href="result.jsp">최종확인</a>
</body>
</html>