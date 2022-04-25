package other;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import connections.com.DaoFactory;
import entitiesadmin.Admin_Central;
import set_get.Adminclass;

public class EditSelect {
	public Admin_Central select_id(String id) {

		Admin_Central ac = new Admin_Central();
		Connection con = null;
		PreparedStatement pst = null;

		try {

			int id1 = Integer.parseInt(id);
			con=DaoFactory.getConnection();
			pst = con.prepareStatement("select * from central where id = ?");
			pst.setInt(1, id1);

			ResultSet rSet = pst.executeQuery();
			while (rSet.next()) {
				ac.setTitle(rSet.getString("title"));
				ac.setPost(rSet.getString("post"));
				ac.setLink(rSet.getString("link"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return ac;
	}
}
