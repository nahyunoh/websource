<%@page import="domain.LoginVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
<style>
	.container{
		margin-top:50px;
	}
</style>
</head>
<body>
<div class="container">
<%
	//login 세션 정보가 있다면 !!(아이디)님 반갑습니다.
	LoginVO login=(LoginVO)session.getAttribute("login");
	
	//로그아웃 버튼 보여주기
	if(login!=null){
		out.print("<h3>" +login.getUserid()+ "님 반갑습니다</h3>");
		out.print(" <button type='button' class='btn btn-primary' onclick=\"location.href='logout.jsp'\">로그아웃</button>");
	
	}else{
		//login 세션 정보가 없다면 로그인 할 수 있는 폼 보여주기
		
	
%>
	<form action="../loginProc" method="post">
  <div class="form-group">
    <label for="userid">ID</label>
    <input type="text" class="form-control" name="userid" id="userid" aria-describedby="id">
    <small id="idHelp" class="form-text text-muted">아이디를 입력해주세요</small>
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input type="password" name="password" class="form-control" id="exampleInputPassword1">
  </div>
  <button type="submit" class="btn btn-primary">Submit</button>
</form>
<% } %>
</div>

</body>
</html>