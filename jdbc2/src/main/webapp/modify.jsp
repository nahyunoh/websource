<%@page import="user.domain.UserVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
UserVO vo=(UserVO)request.getAttribute("vo"); //갖고오기
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">

</head>
<body>
<div class="container-fluid">
	<h1>User Modify</h1>
<%@include file="menu.jsp" %>

<form action="updateProcess.jsp" method="post">
  <div class="form-group">
    <label for="no">번호</label>
    <input type="text" class="form-control" id="no" value="<%=vo.getNo()%>" name="no" readonly>
  </div>
  <div class="form-group">
    <label for="username">이름</label>
    <input type="text" class="form-control" id="username" value="<%=vo.getUsername()%>" name="username" readonly>
  </div>
    <div class="form-group">
    <label for="addr">주소</label>
    <input type="text" class="form-control" id="addr" value="<%=vo.getAddr()%>" name="addr">
  </div>
    <div class="form-group">
    <label for="mobile">전화번호</label>
    <input type="text" class="form-control" id="mobile" value="<%=vo.getMobile()%>" name="mobile">
  </div>
  <button type="submit" class="btn btn-primary" >전체목록</button>
  <button type="submit" class="btn btn-info">수정</button>
  
</form>

</div>
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<script>
	$(function(){
		$(".btn-primary").click(function(e){
			e.preventDefault(); //submit 기능 막기 (submit=폼을 보내버림)
			location.href='allProcess.jsp';
		})
		
	})
</script>
</body>
</html>