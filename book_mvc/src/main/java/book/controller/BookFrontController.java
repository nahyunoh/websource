package book.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import book.action.Action;
import book.action.ActionForward;
import book.action.BookActionFactory;

/**
 * Servlet implementation class bookControllerServlet
 */
@WebServlet("*.do")
public class BookFrontController extends HttpServlet {
   private static final long serialVersionUID = 1L;
   
   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      
      request.setCharacterEncoding("utf-8");
      
      String requestUri = request.getRequestURI();
      String contextPath = request.getContextPath();
      String cmd = requestUri.substring(contextPath.length());
      
      BookActionFactory factory = BookActionFactory.getInstance();
      
      Action action = factory.action(cmd);
      
      //Action에게 일을 시킨다.
      
      ActionForward af = null;
      try {
         af = action.execute(request, response);         
      } catch (Exception e) {
         e.printStackTrace();
      }
      
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