package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.registerdao;
import userbean.userbean;

@WebServlet("/registerservlet")

public class registerservlet extends HttpServlet 

{

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException
	{
		
		try {
		
		userbean user=new userbean();
		
		user.setusername(request.getParameter("username"));
		
		user.setpassword(request.getParameter("password"));
		
		user.setemail(request.getParameter("email"));
		
		PrintWriter out=response.getWriter();
		
	registerdao.register(user);
		
	boolean praveen=user.isvalid();
			
		
				if(praveen)
				{
					
					
				response.sendRedirect("login.jsp");

				}
				
				else
				{
					out.println("Data Not Found");
					response.sendRedirect("register.jsp");
					
				}
		
		}catch(Exception e)
		{
			
			System.out.println(e);
			
		}
			
	}
}
	
