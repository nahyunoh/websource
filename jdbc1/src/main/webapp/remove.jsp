<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	int no=Integer.parseInt(request.getParameter("no"));
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
	<h1>User Remove</h1>
<%@include file="menu.jsp" %>
<%
	Connection con = null;
	PreparedStatement pstmt=null;

	try {		
 	Class.forName("oracle.jdbc.OracleDriver");

 	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	 String user = "javaDB";
 	String password = "12345";
 
 	con = DriverManager.getConnection(url,user,password);
	String sql="delete from usertbl where no=?";
	pstmt=con.prepareStatement(sql);
	
	pstmt.setInt(1,no);
	int result=pstmt.executeUpdate();
	if(result>0){
		out.print("삭제 성공");
	}
	
}catch(Exception e){
	e.printStackTrace();
}finally{
	try{
		pstmt.close();
		con.close();
	}catch(Exception e){
		e.printStackTrace();
	}
}
%>
</div>
</body>
</html>