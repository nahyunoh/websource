<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    String appPath = application.getContextPath();
    String filePath=application.getRealPath("application.jsp");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<ul>
	<li>웹 애플리케이션의 URL 경로명 : <%=appPath %></li>
	<li>application.jsp 파일 경로 : <%=filePath %></li>
	<li>jsp 버전 : <%=application.getMajorVersion() %>.<%=application.getMinorVersion() %></li>
	<li>컨테이너 정보 : <%=application.getServerInfo() %></li>
	<li>웹 어플리케이션 실제 파일 시스템 경로: <%=application.getRealPath("/") %></li>
</ul>
</body>
</html>