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

	String aname = request.getParameter("aname");

	String apassword = request.getParameter("apassword");

	try {

    
    if ((aname.equals("admin") ) && (apassword.equals("admin"))) 
    
    {

        response.sendRedirect("adminhome.jsp?m1=Success");

   	 } 
    
    else 
   	 
   	 {
         response.sendRedirect("admin.jsp?m2=Failed");
	

        }
    
        }catch (Exception e) {
        e.printStackTrace();
        }
        %>


</body>
</html>