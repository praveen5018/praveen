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
	
	public void doPost(HttpServletRequest request,HttpServletResponse res) 
	{
		try {
		
		userbean user=new userbean();
		
		user.setuname(request.getParameter("uname"));
		
		user.setpassword(request.getParameter("password"));
		
		user.setemail(request.getParameter("email"));
		
		user.setid(Integer.parseInt(request.getParameter("id")));
		
		user.setaddress(request.getParameter("address"));
		
		user.setstatus(request.getParameter("Not Approved"));
		
		
		registerdao.regsiter(user);
		
		boolean status=user.isvalid();
		
		if(status) 
		
		{
			
			res.sendRedirect("user.jsp?m1=sucess");
			
		}
		
		else
		{
			res.sendRedirect("register.jsp?m2=Register failed");
			
		}
		}catch(Exception e)
		{
			System.out.println(e);
			
		}
		
		
	}

}
