<%@page import="member.domain.MemberVO"%>
<%@page import="member.persistance.MemberDAO"%>
<%@page import="member.persistance.JDBCUtil"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//modifyForm 넘어오는 값 가져오기
	String currentPassword = request.getParameter("current_password");
	String newPassword = request.getParameter("new_password");
	String confirmPassword = request.getParameter("confirm_password");
	
	if(!newPassword.equals(confirmPassword)){	
		out.print("<script>");		
		out.print("history.back();");		
		out.print("</script>");
	}else{	
		//userid 가져오기
		MemberVO loginVO=(MemberVO)session.getAttribute("loginVO");	
		
		//db 작업
		Connection con = JDBCUtil.getConnection();
		MemberDAO dao = new MemberDAO(con);
		
		int result = dao.update(loginVO.getUserid(), currentPassword, confirmPassword);
		//성공 => commit/세션해제/loginForm
		if(result>0){
			JDBCUtil.commit(con);
			session.removeAttribute("loginVO");
			response.sendRedirect("loginForm.jsp");
		}else{	//실패 => rollback/modifyForm
			JDBCUtil.rollback(con);
			response.sendRedirect("modifyForm.jsp");
		}
	}
%>






