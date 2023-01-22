package mvc.login.dao;

import java.sql.*;
import mvc.login.bean.LoginBean;
import mvc.register.util.DBConnection;



public class LoginDao {
	public String authenticateUser(LoginBean loginBean)
	{
		String userName = loginBean.getUserName();
		String password = loginBean.getPassword();
		
		Connection con = null;
		Statement stat = null;
		ResultSet rs = null;
		
		String userNameDB = "";
		String passwordDB ="";
		
		try 
		{
			con = DBConnection.createConnection();
			stat = con.createStatement();
			rs = stat.executeQuery("select username,password from users");
			
			while(rs.next())
			{
				userNameDB= rs.getString("username");
				passwordDB = rs.getString("password");
				
				if(userName.equals(userNameDB) && password.equals(passwordDB))
				{
					return "SUCCESS";
					
				}
				
			}
			
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		return "INVALID USER CREDENTIALS";
	}

}

