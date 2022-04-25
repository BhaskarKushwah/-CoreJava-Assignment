package connections.com;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import set_get.Registerclass;

public class Connnections_class {
	public boolean register_data(Registerclass r) {
		Connection con = null;
		PreparedStatement pst = null;
		boolean n = false;
		try {
			con = DaoFactory.getConnection();
			pst = con.prepareStatement("insert into cod values(?,?,?,?)");
			pst.setString(1, r.getUsername());
			pst.setString(2, r.getPassword());
			pst.setString(3, r.getNumber());
			pst.setString(4, r.getEmail());
			pst.executeUpdate();
			n = true;
		}

		catch (Exception e) {
			e.printStackTrace();
		} finally {

			try {
				pst.close();
				con.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		return n;
	}

}
