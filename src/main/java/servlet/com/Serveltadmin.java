package servlet.com;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import connections.com.Adminlogin;
import set_get.Adminclass;
/**
 * Servlet implementation class Serveltadmin
 */
@WebServlet("/Serveltadmin")
public class Serveltadmin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Serveltadmin() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		Adminclass ad = new Adminclass();
		Adminlogin al = new Adminlogin();
		ad.setUser(request.getParameter("user"));
		ad.setPassword(request.getParameter("password"));
		Adminclass a1 = al.admin(ad);
		if (a1 == null) {

			out.println("<html>");
			out.println("<body>");
			out.println("<h5> Wrong username or password.</h5>");
			out.println("<body>");
			out.println("<html>");
		} else {
			request.getRequestDispatcher("admin.jsp").forward(request, response);
		}
	}

}
