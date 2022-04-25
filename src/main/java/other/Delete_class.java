package other;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import connections.com.DaoFactory;

//import org.apache.catalina.webresources.TomcatURLStreamHandlerFactory;

import entitiesadmin.Admin_Central;

public class Delete_class {
	public boolean delele_id(Admin_Central ac) {
		Connection con = null;
		PreparedStatement pst = null;
		boolean r = false;
		try {
			con=DaoFactory.getConnection();
			pst = con.prepareStatement("Delete from central where id = ?");
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
