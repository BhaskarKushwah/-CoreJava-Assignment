package servlet.com;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entitiesadmin.Admin_Central;
import other.Central_admin_dao;

/**
 * Servlet implementation class CentralServlet
 */
@WebServlet("/CentralServlet")
@MultipartConfig
public class CentralServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public CentralServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out = response.getWriter();

		String submit = request.getParameter("submit");
		if (submit.equals("add")) {
			Admin_Central ad = new Admin_Central();
			Central_admin_dao ca = new Central_admin_dao();

			String pTitle = request.getParameter("pTitle");
			String pcontent = request.getParameter("pcontent");
			String link = request.getParameter("link");
			ad.setTitle(pTitle);
			ad.setPost(pcontent);
			ad.setLink(link);
			boolean b = ca.savePost(ad);

			if (b == true) {
				/* TODO output your page here. You may use following sample code. */
				out.println("<h3>done</h3>");

				request.getRequestDispatcher("admincentral.jsp").forward(request, response);
			} else {
				out.println("error");
			}
		}

	}

}
