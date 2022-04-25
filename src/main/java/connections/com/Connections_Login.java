package connections.com;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

//import login_and_registation.Login_Connection;
import set_get.Loginclass;

public class Connections_Login {
	public Loginclass con(Loginclass r) {
		Connection con = null;
		PreparedStatement pst = null;
		Loginclass l = null;
		try {
			con = DaoFactory.getConnection();
			pst = con.prepareStatement("select * from cod where password =? and email =?");
			pst.setString(1, r.getPassword());
			pst.setString(2, r.getUsername());
			ResultSet rs = pst.executeQuery();
			if (rs.next()) {

				l = new Loginclass();
				String email = rs.getString("email");
				String pass1 = rs.getString("password");
				l.setUsername(email);
				l.setPassword(pass1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return l;
	}

}
