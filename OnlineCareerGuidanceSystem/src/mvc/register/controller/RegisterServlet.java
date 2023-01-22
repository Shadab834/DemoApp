package mvc.register.controller;

import java.io.IOException;
import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mvc.register.bean.RegisterBean;
import mvc.register.dao.RegisterDao;

//@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String fname = request.getParameter("fname");
		String email = request.getParameter("email");
		String uName = request.getParameter("username");
		String password = request.getParameter("password");
		
		RegisterBean rb = new RegisterBean();
		rb.setFname(fname);
		rb.setEmail(email);
		rb.setuName(uName);
		rb.setPassword(password);
		
		RegisterDao rd = new RegisterDao();
		String userRegister = rd.registerUser(rb);
		if(userRegister.equals("SUCCESS"))
		{
			request.getRequestDispatcher("/RegisterHome.jsp").forward(request, response);
			
		}
		else
		{
			request.setAttribute("errMessage",userRegister);
			request.getRequestDispatcher("/Register.jsp").forward(request, response);
		}
		
	}

}


