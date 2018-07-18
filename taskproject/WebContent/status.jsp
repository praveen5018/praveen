<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="userbean.userbean" %>
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

try 
{
	userbean user=new userbean();
	
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","praveen","praveen");
	
	PreparedStatement pstmt=con.prepareStatement("update taskproject set where status=? ");
	
	pstmt.setString(1, ("activate"));
   
    ResultSet rs=pstmt.executeQuery();
    
    boolean req=rs.next();
    if(req) 
    {
    	response.sendRedirect("userlogin.jsp");
    	
    }
    else
    {
    	response.sendRedirect("viewusers.jsp");
    
    }
	
}catch(Exception e)
	{
	System.out.println(e);
	
	}


%>

}
}

}

</body>
</html>