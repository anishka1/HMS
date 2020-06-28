package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.loginDao;

/**
 * Servlet implementation class login
 */
@WebServlet("/login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public login() 
    {
        super();
       
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
		String uname = request.getParameter("uname");
	    String pass = request.getParameter("pass");
	    
	    loginDao dao = new loginDao();
	    
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
