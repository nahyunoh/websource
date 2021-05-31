<%@page import="user.persistence.UserDAO"%>
<%@page import="user.domain.UserVO"%>
<%@page import="user.persistence.JDBCUtil"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
    <%
            //add.jsp에서 사용자 입력값 가져오기
                            
                            request.setCharacterEncoding("utf-8");
                            UserVO user = new UserVO();
                            user.setUsername(request.getParameter("username"));
                            user.setBirthyear(Integer.parseInt(request.getParameter("birthyear")));
                            user.setAddr(request.getParameter("addr"));
                            user.setMobile(request.getParameter("mobile"));
                                
                            //connection을 얻기
                            Connection con = JDBCUtil.getConnection();
                            UserDAO dao = new UserDAO(con);
                            
                            int result = dao.insert(user);
                            
                            if(result>0) {
                               JDBCUtil.commit(con);
                               response.sendRedirect("allProcess.jsp"); //전체 조회
                               
                            }else{
                               JDBCUtil.rollback(con);
                               response.sendRedirect("add.jsp");
                            }
                            
                            JDBCUtil.close(con);           
            %>