package servlet;

import java.io.IOException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.registerdao;
import dao.updatedao;
import userbean.userbean;

@WebServlet("/updateservlet")
public class updateservlet extends HttpServlet

{
	
		public void doPost(HttpServletRequest request,HttpServletResponse response) throws IOException {
	    userbean user=new userbean();
	    user.setuname(request.getParameter("uname"));
	    user.setpassword(request.getParameter("password"));
	    user.setemail(request.getParameter("email"));
	    user.setid(Integer.parseInt(request.getParameter("id")));
	    user.setaddress(request.getParameter("address"));
		updatedao.update(user);	
	
		response.sendRedirect("viewprofile.jsp");
		
	}

}
	
