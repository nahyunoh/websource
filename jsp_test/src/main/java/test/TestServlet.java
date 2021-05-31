package test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class TestServlet
 */
@WebServlet("/TestServlet")
public class TestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//method가 get 방식으로 오는 것에 응답
//		System.out.println(request.getParameter("userid"));   -콘솔 창 출력
//		System.out.println(request.getParameter("password"));
		
		
		//한글처리(원래는 post방식만)
		request.setCharacterEncoding("utf-8");
		
		
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out=response.getWriter();
		out.print("<html><head><title>입력결과</title></head>");
		out.print("<body><h1>입력결과</h1>");
		out.print("<ul><li>아이디:"+request.getParameter("userid")+"</li>");
		out.print("<li>비밀번호:"+request.getParameter("password")+"</li></ul>");
		out.print("</body></html>");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// method가 post 방식으로 오는 것에 응답
		doGet(request, response); //doGet호출중
	}

}
