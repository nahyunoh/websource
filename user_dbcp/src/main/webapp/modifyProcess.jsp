<%@page import="user.domain.UserVO"%>
<%@page import="user.persistence.JDBCUtil"%>
<%@page import="user.persistence.UserDAO"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int no=Integer.parseInt(request.getParameter("no"));

	Connection con=JDBCUtil.getConnection();
	UserDAO dao=new UserDAO(con);

	UserVO vo=dao.getRow(no);

	request.setAttribute("vo", vo);
	pageContext.forward("modify.jsp");
	
	
%>