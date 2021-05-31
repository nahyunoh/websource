<%@page import="book.persistance.BookDAO"%>
<%@page import="book.persistance.JDBCUtil"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	
	int code=Integer.parseInt(request.getParameter("code"));
	
	Connection con=JDBCUtil.getConnection();
	BookDAO dao=new BookDAO(con);
	
	int result=dao.delete(code);
	
	if(result>0){
		JDBCUtil.commit(con);
		response.sendRedirect("listProcess.jsp");
	}else{
		JDBCUtil.rollback(con);
		response.sendRedirect("index.jsp");
	}
	JDBCUtil.close(con);
	
%>