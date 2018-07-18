package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.logindao;
import userbean.userbean;

@WebServlet("/adminservlet")
public class adminservlet extends HttpServlet

{

	public void doPost(HttpServletRequest request,HttpServletResponse response) throws IOException 
	{
		try {	
			
			String aname = request.getParameter("aname");

			String apassword = request.getParameter("apassword");

		    
		    if ((aname.equals("admin") ) && (apassword.equals("admin"))) 
		    
		    {

		        response.sendRedirect("adminhome.jsp?m1=Success");

		   	 } 
		    
		    else 
		   	 
		   	 	{
		         response.sendRedirect("adminlogin.jsp?m2=Failed");
			

		        }
		    
		        } catch (Exception e) 
			
			{
		        	
		        	
		        	System.out.println(e);
		        	
		        	
			}
			

		}
	}
	
