package connections.com;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import set_get.Adminclass;

public class Adminlogin {
	public Adminclass admin(Adminclass a) {
		Connection con =null;
		
		PreparedStatement pst = null;
		Adminclass ac = null;
		try {
			con=DaoFactory.getConnection();
			pst = con.prepareStatement("select * from admin where name=? and password =?");
			pst.setString(1, a.getUser());
			pst.setString(2, a.getPassword());
			ResultSet rs = pst.executeQuery();
			if (rs.next()) {
				ac = new Adminclass();
				ac.setUser(rs.getString(1));
				ac.setPassword(rs.getString(2));

			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ac;

	}
}
