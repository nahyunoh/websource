<%@page import="user.domain.UserVO"%>
<%@page import="java.util.List"%>
<%@page import="user.persistence.UserDAO"%>
<%@page import="user.persistence.JDBCUtil"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Connection con=JDBCUtil.getConnection();
	UserDAO dao=new UserDAO(con);
	
	List<UserVO> list=dao.getList();
	
	request.setAttribute("list",list);
	pageContext.forward("selectall.jsp"); //담아둔request를 넘기겠다
	JDBCUtil.close(con);
%>