<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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
  <%
//jdbc
Connection con = null;
  PreparedStatement pstmt=null;
  ResultSet rs=null;
try {		
   Class.forName("oracle.jdbc.OracleDriver");

   String url = "jdbc:oracle:thin:@localhost:1521:xe";
   String user = "javaDB";
   String password = "12345";
   
   con = DriverManager.getConnection(url,user,password);
   
   //전체조회 select * from usertbl;
	String sql="select * from usertbl";
	
	pstmt=con.prepareStatement(sql);
	

	rs=pstmt.executeQuery(); //실행-rs에 담기
	while(rs.next()){
		int no=rs.getInt("no");
		String username=rs.getString("username");
		int year=rs.getInt("birthyear");
		String addr=rs.getString("addr");
		String mobile=rs.getString("mobile");
	%>
	<tr>
		<td><%=no %></td>
		<td><a href="selectone.jsp?no=<%=no%>"><%=username %></a></td>
		<td><%=year %></td>
		<td><%=addr %></td>
		<td><%=mobile %></td>
	</tr>
	<% 
	}//while문 종료
} catch (Exception e) {
   e.printStackTrace();
}finally{
   try{
      con.close();
   }catch(Exception e){
      e.printStackTrace();
   }
}
  
  %>
  </tbody>
</table>

</div>
</body>
</html>