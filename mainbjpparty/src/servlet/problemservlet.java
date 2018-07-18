package servlet;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.problemdao;
import userbean.userbean;
@WebServlet("/problemservlet")
public class problemservlet  extends HttpServlet{
	public void doPost(HttpServletRequest request,HttpServletResponse response) throws IOException
	{
		userbean user= new userbean();
		user.setConname(request.getParameter("conname"));
		user.setDivname(request.getParameter("divname"));
		user.setUsername(request.getParameter("username"));
		user.setMobile(request.getParameter("mobile"));
		user.setProblem(request.getParameter("problems"));
		user.setMessage(request.getParameter("message"));
		user.setStatus(request.getParameter("status"));
		problemdao.problem(user);
		response.sendRedirect("divisionhome.jsp");
		
		}

}
