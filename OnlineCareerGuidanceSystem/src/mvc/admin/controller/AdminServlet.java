package mvc.admin.controller;


import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


//@WebServlet("/Register")
public class AdminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String loginID = request.getParameter("loginid");
		String password = request.getParameter("password");
		
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		try 
		{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl11","scott","tiger123");
			
			PreparedStatement ps = con.prepareStatement("insert into ADMIN values(?,?)");
			ps.setString(1, loginID);
			ps.setString(2, password);
			
			
			int i = ps.executeUpdate();
			if(i>0)
			{
				out.println("<h2>Admin successfully login<h2>");
			}
			
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}

}


