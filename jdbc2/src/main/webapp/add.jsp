<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="container-fluid">
	<h1>User Add</h1>
<%@include file="menu.jsp" %>
	<form action="addProcess.jsp" method="post">
  <div class="form-group">
    <label for="username">이름</label>
    <input type="text" class="form-control" id="username" name="username" >
  </div>
  <div class="form-group">
    <label for="birthyear">태어난 해</label>
    <input type="text" class="form-control" id="birthyear" name="birthyear">
  </div>
    <div class="form-group">
    <label for="addr">주소</label>
    <input type="text" class="form-control" id="addr" name="addr">
  </div>
    <div class="form-group">
    <label for="mobile">전화번호</label>
    <input type="text" class="form-control" id="mobile" name="mobile">
  </div>
  <button type="submit" class="btn btn-primary" >등록</button>
  <button type="reset" class="btn btn-danger">취소</button>
  
</form>
</div>
</body>
</html>