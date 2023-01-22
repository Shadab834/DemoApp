package mvc.student.controller;


import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


//@WebServlet("/Register")
public class StudentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String registrationNo = request.getParameter("registration");
		String fName = request.getParameter("fname");
		String lName = request.getParameter("lname");
		String dob = request.getParameter("dob");
		String address = request.getParameter("address");
		String city = request.getParameter("city");
		String state = request.getParameter("state");
		String email = request.getParameter("email");
		String mobileNo = request.getParameter("mobile");
		String yop = request.getParameter("yop");
		String qualification = request.getParameter("qualification");
		String university = request.getParameter("university");
		String marks = request.getParameter("marks");
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		try 
		{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl11","scott","tiger123");
			
			PreparedStatement ps = con.prepareStatement("insert into STUDENT3 values(?,?,?,?,?,?,?,?,?,?,?,?,?)");
			ps.setString(1, registrationNo);
			ps.setString(2, fName);
			ps.setString(3, lName);
			ps.setString(4, dob);
			ps.setString(5, address);
			ps.setString(6, city);
			ps.setString(7, state);
			ps.setString(8, email);
			ps.setString(9, mobileNo);
			ps.setString(10, yop);
			ps.setString(11, qualification);
			ps.setString(12, university);
			ps.setString(13, marks);
			
			int i = ps.executeUpdate();
			if(i>0)
			{
				out.println("<h2>Student successfully filled up details<h2>");
			}
			
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}

}



