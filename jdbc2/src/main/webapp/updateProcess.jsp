<%@page import="user.persistence.JDBCUtil"%>
<%@page import="java.sql.Connection"%>
<%@page import="user.persistence.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//수정할 내용 가져오기(번호, 주소, 전화번호) =modify.jsp에서 넘어온 것
		request.setCharacterEncoding("utf-8");

		int no=Integer.parseInt(request.getParameter("no"));
    	String addr= request.getParameter("addr");
    	String mobile= request.getParameter("mobile");
    	
	Connection con=JDBCUtil.getConnection();
	UserDAO dao=new UserDAO(con);
	
	int result=dao.update(no,addr,mobile);
	
	if(result>0){
		JDBCUtil.commit(con);
		response.sendRedirect("oneProcess.jsp?no="+no);
	}else{
		JDBCUtil.rollback(con);
		response.sendRedirect("modifyProcess.jsp?no"+no);
	}
	JDBCUtil.close(con);
%>