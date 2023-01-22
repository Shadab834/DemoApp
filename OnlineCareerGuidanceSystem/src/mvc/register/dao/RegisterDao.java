package mvc.register.dao;
import java.sql.*;
import mvc.register.bean.RegisterBean;
import mvc.register.util.DBConnection;

public class RegisterDao {
	public String registerUser(RegisterBean rb)
	{
		String fname = rb.getFname();
		String email = rb.getEmail();
		String uName = rb.getuName();
		String password = rb.getPassword();
		
		Connection con = null;
		PreparedStatement ps = null;
		try
		{
			con = DBConnection.createConnection();
			String str1 = "insert into users1(U_FNAME,EMAIL,USERNAME,PASSWORD) values(?,?,?,?)";
			
			ps = con.prepareStatement(str1);
			ps.setString(1, fname);
			ps.setString(2, email);
			ps.setString(3, uName);
			ps.setString(4, password);
			
			int i = ps.executeUpdate();
			
			if(i!=0)
			{
				System.out.println("insertion successful");
				return "SUCCESS";
			}
			
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		return "sorry.... something went wrong";
	}

}

