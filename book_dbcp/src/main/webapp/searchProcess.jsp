<%@page import="book.domain.BookVO"%>
<%@page import="java.util.List"%>
<%@page import="book.persistance.BookDAO"%>
<%@page import="book.persistance.JDBCUtil"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	String criteria=request.getParameter("criteria");
	String keyword=request.getParameter("keyword");
	
	Connection con= JDBCUtil.getConnection();
	BookDAO dao=new BookDAO(con);
	
	List<BookVO> searchList=dao.searchList(criteria, keyword);
	
	
	if(searchList.isEmpty()){
		//검색결과가 존재하지 않으면 index이동
		response.sendRedirect("index.jsp");
		
	}else{
		//검색결과가 존재하면 forward(search)
		request.setAttribute("searchList", searchList);
		pageContext.forward("search.jsp");
	}
	
	JDBCUtil.close(con);

%>