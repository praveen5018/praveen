package servlet;

import java.io.IOException;



import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.registerdao;

import userbean.userbean;

@WebServlet("/registerservlet")

public class registerservlet extends HttpServlet

{
	
	public void doPost(HttpServletRequest request,HttpServletResponse response) throws IOException {
    userbean user=new userbean();
    user.setsname(request.getParameter("sname"));
    user.setpassword(request.getParameter("password"));
    user.setemail(request.getParameter("email"));
    user.setrno(Integer.parseInt(request.getParameter("rno")));
    user.setmarks(Integer.parseInt(request.getParameter("marks")));
    
	registerdao.register(user);	
	
	boolean status=user.isvalid();
	
	if(status)
		
	{
	
	response.sendRedirect("registersucess.jsp?m1=sucess");	
		
	}
	
	else {
		
		response.sendRedirect("register.jsp");
		
	}
	
	}
	


}
