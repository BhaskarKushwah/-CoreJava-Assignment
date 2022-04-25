package servlet.com;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.catalina.tribes.group.Response;

import connections.com.Connections_Login;
import connections.com.Connnections_class;
import set_get.Loginclass;
import set_get.Registerclass;

/**
 * Servlet implementation class ServletLogin
 */
@WebServlet({ "/ServletLogin", "/Login" })
public class ServletLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ServletLogin() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// PrintWriter out= Response.getWriter();
		PrintWriter out = response.getWriter();
		String type = request.getParameter("submit");
		System.out.print(type);
		if (type.equals("login")) {
			Loginclass lc = new Loginclass();
			Connections_Login cl = new Connections_Login();
			lc.setUsername(request.getParameter("username"));
			lc.setPassword(request.getParameter("password"));

			Loginclass lc1 = cl.con(lc);

			if (lc1 == null) {
				out.println("<html>");
				out.println("<body>");
				out.println("<h5> Wrong username or password.</h5>");
				out.println("<body>");
				out.println("<html>");
				// request.getRequestDispatcher("login.html").forward(request, response);

			} else {
				request.getRequestDispatcher("index.jsp").forward(request, response);

			}

		}
		if (type.equals("Register")) {
			Registerclass rc = new Registerclass();
			Connnections_class cc = new Connnections_class();
			rc.setUsername(request.getParameter("username"));
			rc.setPassword(request.getParameter("password"));
			rc.setNumber(request.getParameter("mobile"));
			rc.setEmail(request.getParameter("email"));
			Boolean r = cc.register_data(rc);
			if (r)
				request.getRequestDispatcher("index.jsp").forward(request, response);
			else {
				out.println("<html>");
				out.println("<body>");
				out.println("<h5> Wrong username or password.</h5>");
				out.println("<body>");
				out.println("<html>");
				request.getRequestDispatcher("login.html").forward(request, response);

			}

		}

	}

}
