package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.LoginDao;

/**
 * Servlet implementation class login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public Login() 
    {
        super();
       
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
		String uname = request.getParameter("uname");
	    String pass = request.getParameter("pass");
	    
	    LoginDao dao = new LoginDao();
	    
	   if(dao.check(uname, pass))
	   {
		   HttpSession session = request.getSession();
			session.setAttribute("UserName",uname);		
			response.sendRedirect("welcome.jsp");
	   }
	   else
	   {
		   response.sendRedirect("Login.jsp");
	   }
	
	}

}
