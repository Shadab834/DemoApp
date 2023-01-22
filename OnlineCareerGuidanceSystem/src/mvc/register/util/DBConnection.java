package mvc.register.util;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {
	public static Connection createConnection()
	{
		Connection con=null;
		String url = "jdbc:oracle:thin:@localhost:1521:orcl11";
		String username = "scott";
		String password = "tiger123";
	
	try
	{
		try
		{
			Class.forName("oracle.jdbc.driver.OracleDriver");
		}
		catch(ClassNotFoundException e)
		{
			e.printStackTrace();
		}
		con = DriverManager.getConnection(url,username,password);
		
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
   return con;
}
}
