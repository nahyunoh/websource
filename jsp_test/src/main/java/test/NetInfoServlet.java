package test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class NetInfoServlet
 */
@WebServlet("/netInfo")
public class NetInfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out =response.getWriter();
		out.print("<html><head><title>입력결과</title></head><body>");
		out.print("<h3>네트워크 관련 정보</h3>");
		out.printf("Request Scheme : %s<br>", request.getScheme());
		out.printf("Server Name : %s<br>", request.getServerName());
		out.printf("Server Address : %s<br>", request.getLocalAddr());
		out.printf("Client Address : %s<br>", request.getRemoteAddr());
		out.printf("Client Port : %s<br>", request.getRemotePort());
		out.print("<br>");
		out.printf("<h3>요청방식과 프로토콜 정보</h3>");
		out.printf("Request URI : %s<br>",request.getRequestURI());
		out.printf("Request URL : %s<br>",request.getRequestURL());
		out.printf("Context Path : %s<br>",request.getContextPath());
		out.printf("Request Protocol : %s<br>",request.getProtocol());
		out.printf("Servlet path : %s<br>", request.getServletPath());
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
