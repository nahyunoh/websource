<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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
 <% 
    	int no = Integer.parseInt(request.getParameter("no"));
  		Connection con = null;
   		 PreparedStatement pstmt=null;
    		ResultSet rs=null;
  		try {		
	//드라이버로드
     Class.forName("oracle.jdbc.OracleDriver");

     String url = "jdbc:oracle:thin:@localhost:1521:xe";
     String user = "javaDB";
     String password = "12345";
     
     con = DriverManager.getConnection(url,user,password);
     
     //특정 사람 조회
  	String sql="select * from usertbl where no=?";
  	
  	pstmt=con.prepareStatement(sql);
  	pstmt.setInt(1,no);

  	rs=pstmt.executeQuery(); //실행-rs에 담기
  	if(rs.next()){
  		no=rs.getInt("no");
  		String username=rs.getString("username");
  		int year=rs.getInt("birthyear");
  		String addr=rs.getString("addr");
  		String mobile=rs.getString("mobile");
  	
  	
%>
<form action="modifyProcess.jsp" method="post">
  <div class="form-group">
    <label for="no">번호</label>
    <input type="text" class="form-control" id="no" value="<%=no%>" name="no" readonly>
  </div>
  <div class="form-group">
    <label for="username">이름</label>
    <input type="text" class="form-control" id="username" value="<%=username%>" name="username" readonly>
  </div>
    <div class="form-group">
    <label for="addr">주소</label>
    <input type="text" class="form-control" id="addr" value="<%=addr%>" name="addr">
  </div>
    <div class="form-group">
    <label for="mobile">전화번호</label>
    <input type="text" class="form-control" id="mobile" value="<%=mobile%>" name="mobile">
  </div>
  <button type="submit" class="btn btn-primary" >전체목록</button>
  <button type="submit" class="btn btn-info">수정</button>
  
</form>
<%
		}
	}catch (Exception e) {
	   e.printStackTrace();
	}finally{
	   try{
		   rs.close();
		   pstmt.close();
	      con.close();
	   }catch(Exception e){
	      e.printStackTrace();
	   }
	}
	  
%>
</div>
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<script>
	$(function(){
		$(".btn-primary").click(function(e){
			e.preventDefault(); //submit 기능 막기 (submit=폼을 보내버림)
			location.href='selectall.jsp';
		})
		
	})
</script>
</body>
</html>