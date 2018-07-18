package servlet;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.coursedao;
import userbean.userbean;


@WebServlet("/courseservlet")
public class courseservlet extends HttpServlet

{

	public void doPost(HttpServletRequest request,HttpServletResponse response)
	
	{
		try {
		
		userbean user1=new userbean();
		
		user1.setAddcourse1(request.getParameter("course1"));
		
		user1.setAddcourse2(request.getParameter("course2"));
		
		user1.setAddcourse3(request.getParameter("course3"));
		
		user1.setAddcourse4(request.getParameter("course4"));
		
		coursedao.course(user1);
		
		boolean status=user1.isvalid();
		
		if(status) 
		
		{
			
			response.sendRedirect("adminhome.jsp?m1=sucess");
			
		}
		
		else
		{
			response.sendRedirect("addcourse.jsp?m2=addcourse ");
			
		}
	
		}catch(Exception e)
		{
			System.out.println(e);
			
		}	
	
	}

}
