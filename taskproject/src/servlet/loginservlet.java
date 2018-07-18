 package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
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

	public void doPost(HttpServletRequest request,HttpServletResponse response) throws IOException 
	{
		try {	
		
		userbean user=new userbean();
			
			user.setusername(request.getParameter("username"));
			user.setpassword(request.getParameter("password"));
			
			PrintWriter out=response.getWriter();
			
		logindao.login(user);
			
			boolean status=user.isvalid();
			
			if(status)
			{
				
				
				HttpSession s=request.getSession();
				
				s.setAttribute("usersession", user);
				
				
				response.sendRedirect("userhome.jsp?m1=sucess");
			}
			else 
			{
				response.sendRedirect("userlogin.jsp?m2=failed");
			
			}

	
	}catch(Exception e)
	{
		
		System.out.println(e);
	}
	}
		
}
