<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//세션 해제(제거) -> 2가지 방법 : 특정 세션 제거 , 현재 모든세션 제거 
	session.removeAttribute("login");
	//session.invalidate(); - 모든 세션 제거
	
	//페이지 이동 =>loginForm
	response.sendRedirect("loginForm.jsp");
	
%>