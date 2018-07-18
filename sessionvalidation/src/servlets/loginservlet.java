package servlets;

import java.io.IOException;

import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.logindao;
import userbean.userbean;



@WebServlet("/loginservlet")

public class loginservlet extends HttpServlet

{
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException
	{
		
		try {
		
		userbean user=new userbean();
		
		user.setusername(request.getParameter("username"));
		
		user.setpassword(request.getParameter("password"));
		
		PrintWriter out=response.getWriter();
		
	logindao.login(user);
		
	boolean praveen=user.isvalid();
			
		
				if(praveen)
				{
					
					HttpSession session=request.getSession(true);
					
					session.setAttribute("usersession", user);
					
				response.sendRedirect("profile.jsp");

				}
				
				else
				{
					out.println("Data Not Found");
					response.sendRedirect("login.jsp");
					
				}
		
		}catch(Exception e)
		{
			
			System.out.println(e);
			
		}
			
		
	}

}
