package other;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import entitiesadmin.Admin_Central;

public class PostDaocentral {

	public boolean Updateadmin(Admin_Central a1) {

		Connection con = null;
		PreparedStatement pst = null;

		boolean r = false;
		try {

			Class.forName("com.mysql.cj.jdbc.Driver");

			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/main", "root", "root");
			pst = con.prepareStatement(" UPDATE central SET title = ?, post = ? ,link = ?  WHERE id =? ");

			pst.setString(1, a1.getTitle());
			pst.setString(2, a1.getPost());
			pst.setString(3, a1.getLink());
			pst.setInt(4, a1.getId());
			pst.executeUpdate();

			r = true;
			System.out.print(r);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return r;
	}

}
