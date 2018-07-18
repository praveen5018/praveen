<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="userbean.userbean"%>
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
String u=request.getParameter("username");
String p=request.getParameter("password");
userbean b=new userbean();
b.setUsername(u);
b.setPassword(p);

Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "anuroop", "anuroop");
PreparedStatement pstmt=con.prepareStatement("select * from condiv where username=? and password=? and type=?");
pstmt.setString(1, b.getUsername());
pstmt.setString(2, b.getPassword());
pstmt.setString(3, "division");

ResultSet rs=pstmt.executeQuery();
boolean b1=rs.next();

if(b1){
	 
	
	b.setRepeatpassword(rs.getString("repeatpassword"));
	b.setFirstname(rs.getString("firstname"));
	b.setLastname(rs.getString("lastname"));
	b.setGender(rs.getString("gender"));
	b.setEmail(rs.getString("email"));
	b.setMobile(rs.getString("mobile"));
	b.setDivison(rs.getString("division"));
	b.setConstitution(rs.getString("constitution"));
	String c=rs.getString(2);
	HttpSession session1=request.getSession();
	session.setAttribute("anuroop", b);
	response.sendRedirect("divisionhome.jsp");
	
}
else{
	RequestDispatcher rd=request.getRequestDispatcher("divisionlogin.jsp");
	rd.include(request, response);
	out.print("invalid details");
}

%>
</body>
</html>