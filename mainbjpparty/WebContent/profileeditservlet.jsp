<%@page import="java.sql.ResultSet"%>
<%@page import="userbean.userbean"%>
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
String fn=request.getParameter("firstname");
String ln=request.getParameter("lastname");
String e=request.getParameter("email");
String mb=request.getParameter("mobile");
String u=request.getParameter("username");
String p=request.getParameter("password");
String rp=request.getParameter("repeatpassword");
String g=request.getParameter("gender");

Class.forName("oracle.jdbc.driver.OracleDriver");
Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "anuroop", "anuroop");
PreparedStatement pstmt=conn.prepareStatement("update condiv set FIRSTNAME=?,LASTNAME=?,EMAIL=?, mobile=?,USERNAME=?,PASSWORD=?,REPEATPASSWORD=?,GENDER=? where username=?");
pstmt.setString(1, fn);
pstmt.setString(2,ln);
pstmt.setString(3,e);
pstmt.setString(4,mb);
pstmt.setString(5, u);
pstmt.setString(6, p);
pstmt.setString(7, rp);
pstmt.setString(8, g);
pstmt.setString(9, u);
int i=pstmt.executeUpdate();
System.out.print(mb);
if(i==1){
		response.sendRedirect("profile.jsp");
}
else{
	RequestDispatcher rd=request.getRequestDispatcher("adminprofileedit.jsp");
	rd.include(request, response);
	out.print("update not done");
}

%>
</body>
</html>


