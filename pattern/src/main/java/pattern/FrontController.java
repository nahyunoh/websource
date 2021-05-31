package pattern;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.Action;
import action.ActionFactory;
import action.ActionForward;
import action.DeleteAction;
import action.InsertAction;
import action.LoginAction;

/**
 * Servlet implementation class FrontController
 */
@WebServlet("*.do")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		//요청이 어디에서 왔느냐?
		String requestURI =request.getRequestURI();
		String contextPath=request.getContextPath();
		String cmd=requestURI.substring(contextPath.length());
		
		System.out.println("requestURI : "+requestURI); // /pattern/insert.do
		System.out.println("contextPath : "+contextPath); //  /pattern
		System.out.println("cmd : "+cmd);
		
		
		ActionForward af=null;
		
		ActionFactory factory=ActionFactory.getInstance();
		Action action=factory.action(cmd);
		
		try {
			af=action.execute(request, response);//시킴
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		
		
		//try안에 있던 것 중복되어 밖으로 뺌
		if(af.isRedirect()) {
			response.sendRedirect(af.getPath());
		}else {
			RequestDispatcher rd=request.getRequestDispatcher(af.getPath());
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
