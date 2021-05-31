package test;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class infoServlet
 */
@WebServlet("/info")
public class infoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       


	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//info2에서 사용자의 입력값 가져오기
		String userid=request.getParameter("userid");
		String password=request.getParameter("password");
		
		//데이터베이스 작업 =>로그인
		
		
		//~~님 정보 유지=>request, session 결정
		
		//영역 객체에 값 담기
		request.setAttribute("userid_req", userid);
		
		//포워드
		RequestDispatcher rd=request.getRequestDispatcher("scope/member2.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
