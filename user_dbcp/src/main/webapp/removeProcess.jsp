<%@page import="user.persistence.UserDAO"%>
<%@page import="user.persistence.JDBCUtil"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	int no =Integer.parseInt(request.getParameter("no"));
	Connection con= JDBCUtil.getConnection();
	UserDAO dao=new UserDAO(con);
	
	int result=dao.remove(no);
	if(result>0){
		JDBCUtil.commit(con);
		response.sendRedirect("allProcess.jsp");
	}else{
		JDBCUtil.rollback(con);
		response.sendRedirect("oneProcess.jsp?no="+no);
	}
	
%>