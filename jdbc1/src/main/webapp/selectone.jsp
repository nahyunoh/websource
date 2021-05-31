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
</head>
<body>
<div class="container-fluid">
	<h1>User SelectOne</h1>
	<%@include file="menu.jsp" %>
    <% 
    	int no=Integer.parseInt(request.getParameter("no"));
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
	
	<form>
  <div class="form-group">
    <label for="no">번호</label>
    <input type="text" class="form-control" id="no" value="<%=no%>" readonly>
  </div>
  <div class="form-group">
    <label for="username">이름</label>
    <input type="text" class="form-control" id="username" value="<%=username%>"readonly>
  </div>
    <div class="form-group">
    <label for="addr">주소</label>
    <input type="text" class="form-control" id="addr" value="<%=addr%>"readonly>
  </div>
    <div class="form-group">
    <label for="mobile">전화번호</label>
    <input type="text" class="form-control" id="mobile" value="<%=mobile%>"readonly>
  </div>
  <button type="submit" class="btn btn-primary" >전체목록</button>
  <button type="submit" class="btn btn-danger">삭제</button>
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
<!-- submit에서 selectall로 가게 하는 것=>제이쿼리  -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<script>
	$(function(){
		$("button:first").click(function(e){
			e.preventDefault(); //submit 기능 막기 (submit=폼을 보내버림)
			location.href='selectall.jsp';
		})
		
		$(".btn-danger").click(function(e){
			e.preventDefault();
			location.href="remove.jsp?no=<%=no%>";
			
		})
		$("button:last").click(function(e){
			e.preventDefault();
			location.href="modify.jsp?no=<%=no%>";
			
		})
	})
</script>
</body>
</html>