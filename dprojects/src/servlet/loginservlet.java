package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.login;
import dao.registerdao;
import userbean.userbean;

@WebServlet("/loginservlet")
public class loginservlet extends HttpServlet

{
	
	public void doPost(HttpServletRequest request,HttpServletResponse response) throws IOException 
	{
			userbean user=new userbean();
			
			PrintWriter out = response.getWriter();
			
			user.setsname(request.getParameter("sname"));
			user.setpassword(request.getParameter("password"));
			
			login.login(user);
			
			boolean status=user.isvalid();
			if(status)
			{
				
				HttpSession s=request.getSession(true);
				
				
				s.setMaxInactiveInterval(10);
				
				
				s.setAttribute("usersession", user);
				
				response.sendRedirect("profile1.jsp?m1=sucess");
			}
			
			else 
				
			{
				
				out.println("Session Time Out");
				
				response.sendRedirect("login.jsp?m2=faild");
			}

		}
	}
