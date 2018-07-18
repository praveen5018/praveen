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
PreparedStatement pst=con.prepareStatement("select * from condiv where username=? and password=? and type=?");
pst.setString(1, b.getUsername());
pst.setString(2, b.getPassword());
pst.setString(3, "constitution");
ResultSet rs=pst.executeQuery();
boolean b1=rs.next();

System.out.print(b.getUsername());
System.out.print(b.getPassword());
if(b1){
	
	b.setRepeatpassword(rs.getString("repeatpassword"));
	b.setFirstname(rs.getString("firstname"));
	b.setLastname(rs.getString("lastname"));
	b.setGender(rs.getString("gender"));
	b.setEmail(rs.getString("email"));
	b.setMobile(rs.getString("mobile"));
	b.setConstitution(rs.getString("constitution"));
	b.setDivison(rs.getString("division"));
	String c=rs.getString(1);
	HttpSession session1=request.getSession();
	session.setAttribute("anuroop", b);
		
	response.sendRedirect("constitutionhome.jsp");
	
}
else{
	RequestDispatcher rd=request.getRequestDispatcher("constitutionlogin.jsp");
	rd.include(request, response);
	out.print("invalid details");
}

%>
</body>
</html>