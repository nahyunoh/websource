
<%@page import="java.util.List"%>
<%@page import="user.domain.UserVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%
    	//List<UserVO> list=(List<UserVO>)request.getAttribute("list");
    	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="container-fluid">
	<h1>User SelectAll</h1>
<%@include file="menu.jsp" %>

<table class="table">
  <thead>
    <tr>
      <th scope="col">번호</th>
      <th scope="col">이름</th>
      <th scope="col">태어난해</th>
      <th scope="col">주소</th>
      <th scope="col">전화번호</th>
    </tr>
  </thead>
  <tbody>
	<%--<%for(UserVO vo:list){ 
	 <tr>
		<td><%=vo.getNo() %></td>
		<td><a href="view.do?no=<%=vo.getNo()%>"><%=vo.getUsername()%></a></td>
		<td><%=vo.getBirthyear()%></td>
		<td><%=vo.getAddr()%></td>
		<td><%=vo.getMobile()%></td>
		
	</tr>
		<% } %>--%>              <!-- getAttribute할때 쓰는 list와 같은 것 -->
  	<c:forEach var="vo" items="${list}">
  		<tr>	
  			<td>${vo.no}</td>
  			<td><a href="view.do?no=${vo.no}">${vo.username}</a></td>
  			<td>${vo.birthyear}</td>
  			<td>${vo.addr}</td>
  			<td>${vo.mobile}</td>
  		</tr>
  	</c:forEach>
  </tbody>
</table>

</div>
</body>
</html>