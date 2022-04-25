package state.com;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import connections.com.DaoFactory;
import entitiesadmin.Admin_Central;

public class State_admin_dao {
	Connection con = null;
	PreparedStatement pst = null;

	public boolean savePostState(Admin_Central p) {
		boolean f = false;
		try {

			con = DaoFactory.getConnection();
			pst = con.prepareStatement("insert into  state(title,post,link) values(?,?,?)");
			pst.setString(1, p.getTitle());
			pst.setString(2, p.getPost());
			pst.setString(3, p.getLink());
			pst.executeUpdate();
			f = true;
			System.out.print(f);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return f;
	}

	public Admin_Central select_idState(String id) {
		// public static void main(String []as) {

		Admin_Central ac = new Admin_Central();
		Connection con = null;
		PreparedStatement pst = null;

		try {

			int iid = Integer.parseInt(id);
			Class.forName("com.mysql.cj.jdbc.Driver");
//		System.out.println("Driverload");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/main", "root", "root");
			pst = con.prepareStatement("select * from state where id = ?");
			pst.setInt(1, iid);

			ResultSet rSet = pst.executeQuery();
			while (rSet.next()) {
				ac.setTitle(rSet.getString("title"));
				ac.setPost(rSet.getString("post"));
				ac.setLink(rSet.getString("link"));

//		System.out.println(rSet.getString("post"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return ac;
	}

	public boolean UpdateadminState(Admin_Central a1) {

		Connection con = null;
		PreparedStatement pst = null;
		// ArrayList<Admin_Central> list = new ArrayList<>();
		boolean r = false;
		try {

			Class.forName("com.mysql.cj.jdbc.Driver");
			// System.out.println("Driverload");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/main", "root", "root");
			pst = con.prepareStatement(" UPDATE state SET title = ?, post = ? ,link = ?  WHERE id =? ");

			pst.setString(1, a1.getTitle());
			pst.setString(2, a1.getPost());
			pst.setString(3, a1.getLink());
			pst.setInt(4, a1.getId());

			/*
			 * pst.setString(1,"update tiltle" ); pst.setString(2, "update post");
			 * pst.setString(3, "update link"); pst.setInt(4,6 );
			 */

			pst.executeUpdate();

			r = true;
			System.out.print(r);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return r;
	}

	public boolean delele_idState(Admin_Central ac) {
//	public static void main(String []agrs) {

		Connection con = null;
		PreparedStatement pst = null;
		boolean r = false;
		try {

//		int iid= Integer.parseInt(id);
			Class.forName("com.mysql.cj.jdbc.Driver");
//		System.out.println("Driverload");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/main", "root", "root");
			pst = con.prepareStatement("Delete from state where id = ?");
			pst.setInt(1, ac.getId());
			pst.executeUpdate();
			r = true;

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return r;
	}

}
