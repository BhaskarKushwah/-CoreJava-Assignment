package other;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import connections.com.DaoFactory;
import entitiesadmin.Admin_Central;

//get all post
public class User_Central {
	public List<Admin_Central> getAllPost() {
		Connection con = null;
		PreparedStatement pst = null;
		List<Admin_Central> list = new ArrayList<>();
		try {
		
			con = DaoFactory.getConnection();
			pst = con.prepareStatement("select * from central");
			ResultSet set = pst.executeQuery();

			while (set.next()) {
				Admin_Central ac = new Admin_Central();
				int id = set.getInt("id");
				String pTitle = set.getString("title");
				String pContent = set.getString("post");
				String plink = set.getString("link");
				ac.setTitle(pTitle);
				ac.setPost(pContent);
				ac.setLink(plink);
				ac.setId(id);
				list.add(ac);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
}
