package servlet;

import java.io.IOException;

import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.registerdao;
import userbean.userbean;


@WebServlet("/registerservlet")

public class registerservlet extends HttpServlet

{
	
	public void doPost(HttpServletRequest request,HttpServletResponse response) 
	{
		try {
		
		userbean user=new userbean();
		
		user.setusername(request.getParameter("username"));
		
		user.setpassword(request.getParameter("password"));
		
		user.setemail(request.getParameter("email"));
		
		user.setid(Integer.parseInt(request.getParameter("id")));
		
		user.setaddress(request.getParameter("address"));
		
		user.setstatus(request.getParameter("status"));
		
		registerdao.regsiter(user);
		
		boolean status=user.isvalid();
		
		if(status) 
		
		{
			
			response.sendRedirect("userlogin.jsp?m1=sucess");
			
		}
		
		else
		{
			response.sendRedirect("userlogin.jsp?m2=register failed");
			
		}
		}catch(Exception e)
		{
			System.out.println(e);
			
		}
		
		
	}

}
