package servlet.com;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.catalina.valves.rewrite.Substitution.StaticElement;
import org.apache.el.parser.AstDynamicExpression;

import com.mysql.cj.protocol.x.SyncFlushDeflaterOutputStream;

import entitiesadmin.Admin_Central;
import other.Delete_class;
import other.EditSelect;
import other.PostDaocentral;

/**
 * Servlet implementation class EditServlet
 */
@WebServlet("/EditServlet")
public class EditServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String button=request.getParameter("submit");
		
		PrintWriter out=response.getWriter();
		if(button.equals("sendid"))
		{
			Admin_Central ac=new Admin_Central();
			EditSelect ed=new EditSelect();
			 String id=request.getParameter("updateid");
		   Admin_Central as1= ed.select_id(id);
		//	System.out.print(id);
		request.setAttribute("central",as1);
		RequestDispatcher d=request.getRequestDispatcher("admincentral.jsp");
		d.forward(request, response);
		}
		if(button.equals("final")) {
			Admin_Central ac=new Admin_Central();

			String id=request.getParameter("updateid");
			int id1=Integer.parseInt(id);
		ac.setId(id1);
		ac.setTitle(request.getParameter("pTitle"));
		String post=request.getParameter("pPost");
		ac.setPost(post);
		ac.setLink(request.getParameter("plink"));
		PostDaocentral ps=new PostDaocentral();
		boolean r=ps.Updateadmin(ac); 
	
				if(r) {
			
			out.println("<html>");
			out.println("<body>");
			out.println("<h5> Done.</h5>");
			out.println("<body>");
			out.println("<html>");
			
		}else {
			request.getRequestDispatcher("admincentral.jsp").forward(request, response);
		
		
		}}
		
		if(button.equals("del")) {
			
			Admin_Central ac12=new Admin_Central();
			String id=request.getParameter("updateid");
			int id1=Integer.parseInt(id);
			ac12.setId(id1);	
			System.out.println(id1);
			Delete_class dc=new Delete_class();
			Boolean r=	dc.delele_id(ac12);
			System.out.print(r);
			if(r) {

				out.println("<html>");
				out.println("<body>");
				out.println("<h5> Done.</h5>");
				out.println("<body>");
				out.println("<html>");
				//request.getRequestDispatcher("admincentral.jsp").forward(request, response);

				}else {
				out.println("<html>");
				out.println("<body>");
				out.println("<h5> Failed.</h5>");
				out.println("<body>");
				out.println("<html>");
			}
		
		}

	
	
	
	
	
	
	
	
	
	
	
	
	}
}