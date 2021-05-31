<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    //cookie_lan.jsp에서 사용자 선택값 가져오기
   	String language= request.getParameter("language");
			//코리아나 잉글리시 가져옴
    
    //가져온 선택값을 쿠키 객체 생성 후 response객체에 추가
    Cookie c=new Cookie("language",language);
	c.setMaxAge(60*60*24);
	response.addCookie(c);

    //원래 페이지로 돌아가기
    response.sendRedirect("cookie_lang.jsp");
    
%>
