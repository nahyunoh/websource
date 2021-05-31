<%@page import="member.domain.MemberVO"%>
<%@page import="member.persistance.MemberDAO"%>
<%@page import="member.persistance.JDBCUtil"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");//인코딩

	//joinForm에서 넘어오는 값 가져오기
	String userid=request.getParameter("userid");
	String password=request.getParameter("password");
	String confirm_password=request.getParameter("confirm_password");
	String name=request.getParameter("name");
	String gender=request.getParameter("gender");
	String email=request.getParameter("email");
	
	MemberVO vo=new MemberVO(userid, password,name,gender, email);
	
	//db작업
	Connection con=JDBCUtil.getConnection();
	MemberDAO dao=new MemberDAO(con);
	
	int result=dao.insert(vo);
	
	if(result>0){
		JDBCUtil.commit(con);
		response.sendRedirect("loginForm.jsp");
	}else{
		JDBCUtil.rollback(con);
		response.sendRedirect("joinForm.jsp");
	}
	JDBCUtil.close(con);
	
	//성공=>커밋/loginForm.jsp
	//실패=>롤백/joinForm.jsp
%>