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
	String language="korea";

	//쿠키 정보 가져오기
	Cookie[] cookies=request.getCookies();
	
	for(Cookie c:cookies){
		if(c.getName().equals("language")){
			language=c.getValue();
		}
	}
	
	if(language.equals("korea")){
		out.print("<h3>안녕하세요. 이것은 쿠키 예제입니다</h3>");
	}else{
		out.print("<h3>Hello. This is Cookie example.</h3>");
	}
%>
<form action="cookie_set.jsp" method="post">
	<input type="radio" name="language" id="" value="korea" <%if(language.equals("korea")){ %>checked <% }%> />한국어
	<input type="radio" name="language" id="" value="english" <%if(language.equals("english")){%> checked <%} %>/>영어
	<input type="submit" value="설정" />
</form>
</body>
</html>