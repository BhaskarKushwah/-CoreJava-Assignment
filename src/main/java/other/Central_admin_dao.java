package other;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import connections.com.DaoFactory;
import entitiesadmin.Admin_Central;

public class Central_admin_dao {
	Connection con = null;
	PreparedStatement pst = null;

	public boolean savePost(Admin_Central p) {
		boolean f = false;

		try {
			con=DaoFactory.getConnection();
			pst = con.prepareStatement("insert into  central(title,post,link) values(?,?,?)");
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
}
