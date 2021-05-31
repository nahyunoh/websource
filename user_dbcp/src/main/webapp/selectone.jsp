<%@page import="user.domain.UserVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.ResultSet"%>
<%
	UserVO vo=(UserVO)request.getAttribute("vo");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="container-fluid">
	<h1>User SelectOne</h1>
	<%@include file="menu.jsp" %>
   
	
	<form>
  <div class="form-group">
    <label for="no">번호</label>
    <input type="text" class="form-control" id="no" value="<%=vo.getNo()%>" readonly>
  </div>
  <div class="form-group">
    <label for="username">이름</label>
    <input type="text" class="form-control" id="username" value="<%=vo.getUsername()%>"readonly>
  </div>
    <div class="form-group">
    <label for="addr">주소</label>
    <input type="text" class="form-control" id="addr" value="<%=vo.getAddr()%>"readonly>
  </div>
    <div class="form-group">
    <label for="mobile">전화번호</label>
    <input type="text" class="form-control" id="mobile" value="<%=vo.getMobile()%>"readonly>
  </div>
  <button type="submit" class="btn btn-primary" >전체목록</button>
  <button type="submit" class="btn btn-danger">삭제</button>
  <button type="submit" class="btn btn-info">수정</button>
  
</form>

</div>
<!-- submit에서 selectall로 가게 하는 것=>제이쿼리  -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<script>
	$(function(){
		$("button:first").click(function(e){
			e.preventDefault(); //submit 기능 막기 (submit=폼을 보내버림)
			location.href='allProcess.jsp';
		})
		
		$(".btn-danger").click(function(e){
			e.preventDefault();
			location.href="removeProcess.jsp?no=<%=vo.getNo()%>";
			
		})
		$("button:last").click(function(e){
			e.preventDefault();
			location.href="modifyProcess.jsp?no=<%=vo.getNo()%>";
			
		})
	})
</script>
</body>
</html>