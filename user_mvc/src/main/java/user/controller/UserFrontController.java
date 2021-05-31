package user.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import user.action.Action;
import user.action.ActionForward;
import user.action.UserActionFactory;

/**
 * Servlet implementation class UserFrontController
 */
@WebServlet("*.do")
public class UserFrontController extends HttpServlet {
   private static final long serialVersionUID = 1L;
       
  
   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      
      //한글처리
      request.setCharacterEncoding("utf-8");
      
      //요청이 어디서 왔는지 분류하기
      String requestURL = request.getRequestURI();
      String contextPath = request.getContextPath();
      String cmd = requestURL.substring(contextPath.length());
      
      //요청에 따라서 Action 생성 => UserActionFactory에게 맡김
      //new를 이용해서 객체 x => 싱글톤 패턴
      UserActionFactory uaf = UserActionFactory.getInstance();
      Action action = uaf.action(cmd);
      
      //생성된 action에 따라서 일 시키기
      ActionForward af = null;
      try {
         af = action.execute(request, response);
      } catch (Exception e) {
         e.printStackTrace();
      }
      
      //af에 세팅되어 있는 값을 이용하여 이동하기
      if(af.isRedirect()) {   
         response.sendRedirect(af.getPath());
      }else {
         RequestDispatcher rd = request.getRequestDispatcher(af.getPath());
         rd.forward(request, response);
      }   
   }
   /**
    * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
    */
   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      // TODO Auto-generated method stub
      doGet(request, response);
   }

}