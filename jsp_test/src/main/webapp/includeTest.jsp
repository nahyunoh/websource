<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>include 지시어 테스트</h2>
	<h3>오늘 날짜</h3>
	<%--include 지시어 : 다른 jsp페이지를 포함시킬 때 사용 
		하나의 파일로 합쳐진 다음에 컴파일이 됨
		변수 선언이 중복될 수 있음
		포함되는 jsp는 컴파일 되지 않음
		--%>
	<%@ include file="date.jsp" %>
</body>
</html>