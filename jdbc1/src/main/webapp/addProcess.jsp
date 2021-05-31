<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	//add.jsp에서 사용자 입력값 가져오기
    	request.setCharacterEncoding("utf-8");
    	String username= request.getParameter("username");
    	int birthyear= Integer.parseInt(request.getParameter("birthyear"));
    	String addr= request.getParameter("addr");
    	String mobile= request.getParameter("mobile");
    	
    	//db작업하기
	Connection con = null;
	PreparedStatement pstmt=null;

	try {		
 	Class.forName("oracle.jdbc.OracleDriver");

 	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	 String user = "javaDB";
 	String password = "12345";
 
 	con = DriverManager.getConnection(url,user,password);
	String sql ="insert into usertbl(no, username, birthyear, addr, mobile) ";
	sql+="values(user_seq.nextval, ?, ?, ?,?)";
	pstmt=con.prepareStatement(sql);
	
	pstmt.setString(1,username);
	pstmt.setInt(2,birthyear);
	pstmt.setString(3,addr);
	pstmt.setString(4,mobile);
	
	int result=pstmt.executeUpdate();
	//작업 결과에 따라 페이지 이동
	if(result>0){
		response.sendRedirect("selectall.jsp");//입력 성공=>전체 조회
	}else{
		response.sendRedirect("add.jsp");//입력 실패=>add.jsp
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
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>