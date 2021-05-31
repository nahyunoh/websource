<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%
   	//가져오는 값에 한글처리
   	request.setCharacterEncoding("utf-8");
   
    	//userForm.jsp에서 사용자 입력값 가져오기
    	String username=request.getParameter("username");
    	String  userid=request.getParameter("userid");
 
    	//userid만 request영역에 값을 담기
    	request.setAttribute("userid",userid);
    %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>
<%=username %>님 반갑습니다.<%=username %> 님 아이디는 <%=userid%>입니다.
</h3>
<form action="sessionScope.jsp" method="post">
<table>
	<tr>
		<td>주소</td>
		<td><input type="text" name="addr" /></td>
	</tr>
	<tr>
		<td>이메일</td>
		<td><input type="email" name="email" /></td>
	</tr>
	<tr>
		<td>전화번호</td>
		<td><input type="tel" name="tel" /></td>
	</tr>
	<tr>
		<td colspan="2"><input type="submit" name="submit" /></td>
	</tr>
</table>
</form>
</body>
</html>