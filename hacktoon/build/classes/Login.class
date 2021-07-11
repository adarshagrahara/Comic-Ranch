

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



/**
 * Servlet implementation class Login
 */

public class Login extends HttpServlet {

	public static String username = "";

	

	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */


	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		
		doGet(request, response);

		username = request.getParameter("username");

		String name = request.getParameter("name");

		System.out.println("Username:"+username);

		System.out.println("Name:"+name);
		
		request.setAttribute("myname",username);

		request.getRequestDispatcher("Posting.jsp").forward(request, response);

	}
	
	public static String loginnnnnnnnnname() {
		
		System.out.println("the value of username in the login class is "+username);
		
		return username;
		
	}














}
