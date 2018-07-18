<%@page import="userbean.userbean"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<% 
try{

userbean user=new userbean();

String uname=request.getParameter("user");

Class.forName("oracle.jdbc.driver.OracleDriver");

Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","praveen","praveen");

PreparedStatement ps=conn.prepareStatement("update company set status=? where uname=?");

ps.setString(1, "Approved");

ps.setString(2, uname);

int i=ps.executeUpdate();


if (i==1) 
   
 {

    response.sendRedirect("viewusers.jsp?m1=Success");

	 } 

else 
	 
	 {
     response.sendRedirect("viewusers.jsp?m2=Failed");


    }
    } catch (Exception e) 
    
    
    {
    e.printStackTrace();
    }


%>



</body>
</html>