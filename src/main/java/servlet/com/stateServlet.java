package servlet.com;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entitiesadmin.Admin_Central;

import state.com.State_admin_dao;

/**
 * Servlet implementation class stateServlet
 */
@WebServlet("/stateServlet")
public class stateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public stateServlet() {
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
			State_admin_dao ca = new State_admin_dao();

			String pTitle = request.getParameter("pTitle");
			String pcontent = request.getParameter("pcontent");
			String link = request.getParameter("link");
			ad.setTitle(pTitle);
			ad.setPost(pcontent);
			ad.setLink(link);
			boolean b = ca.savePostState(ad);

			if (b == true) {
				/* TODO output your page here. You may use following sample code. */
				out.println("done");

				request.getRequestDispatcher("adminstate.jsp").forward(request, response);
			} else {
				out.println("error");
			}
		}

		if (submit.equals("sendid")) {
			// Admin_Central ac=new Admin_Central();
			// EditSelectState ed=new EditSelectState();
			State_admin_dao ed = new State_admin_dao();

			String id = request.getParameter("updateid");
			Admin_Central as1 = ed.select_idState(id);
			// System.out.print(id);
			request.setAttribute("as1", as1);
			RequestDispatcher d = request.getRequestDispatcher("adminstate.jsp");
			d.forward(request, response);
		}

		if (submit.equals("final")) {
			Admin_Central ac = new Admin_Central();

			String id = request.getParameter("updateid");
			int id1 = Integer.parseInt(id);
			ac.setId(id1);
			ac.setTitle(request.getParameter("pTitle"));
			String post = request.getParameter("pPost");
			ac.setPost(post);
			ac.setLink(request.getParameter("plink"));
			State_admin_dao ps = new State_admin_dao();
			request.setAttribute("post", ac);

			boolean r = ps.UpdateadminState(ac);
			if (r) {

				out.println("<html>");
				out.println("<body>");
				out.println("<h5>" + post + " Done.</h5>");
				out.println("<body>");
				out.println("<html>");

			} else {
				request.getRequestDispatcher("adminstate.jsp").forward(request, response);
			}
		}

		if (submit.equals("del")) {

			Admin_Central ac12 = new Admin_Central();
			String id = request.getParameter("updateid");
			int id1 = Integer.parseInt(id);
			ac12.setId(id1);
			System.out.println(id1);
			// Delete_class dc=new Delete_class();
			State_admin_dao dc = new State_admin_dao();

			Boolean r = dc.delele_idState(ac12);
			System.out.print(r);
			if (r) {

				out.println("<html>");
				out.println("<body>");
				out.println("<h5> Done.</h5>");
				out.println("<body>");
				out.println("<html>");
				
			} else {
				out.println("<html>");
				out.println("<body>");
				out.println("<h5> Failed.</h5>");
				out.println("<body>");
				out.println("<html>");
			}

		}

	}

}
