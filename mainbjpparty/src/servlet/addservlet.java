package servlet;

import java.io.IOException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.adddao;
import userbean.userbean;

@SuppressWarnings("serial")
@WebServlet("/addservlet")
public class addservlet extends HttpServlet{
   
	    public void doPost(HttpServletRequest request,HttpServletResponse response) throws IOException {
	    userbean user=new userbean();
		user.setConstitution(request.getParameter("constitution"));
		user.setDivison(request.getParameter("division"));
		user.setFirstname(request.getParameter("firstname"));
		user.setLastname(request.getParameter("lastname"));
		user.setEmail(request.getParameter("email"));
		user.setMobile(request.getParameter("mobile"));
		user.setUsername(request.getParameter("username"));
		user.setPassword(request.getParameter("password"));
		user.setRepeatpassword(request.getParameter("repeatpassword"));
		user.setGender(request.getParameter("gender"));
	    user.setType(request.getParameter("type"));
		adddao.add(user);
		response.sendRedirect("adminhome.jsp");
		
		

	 }
}
