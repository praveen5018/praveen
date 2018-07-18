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
String cn=request.getParameter("conname");
String dn=request.getParameter("divname");
String u=request.getParameter("username");
String mb=request.getParameter("mobile");
String p=request.getParameter("problems");
String ms=request.getParameter("message");
String st=request.getParameter("status");

Class.forName("oracle.jdbc.driver.OracleDriver");
Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "anuroop", "anuroop");
PreparedStatement pstmt=conn.prepareStatement("update problems set conname=?,divname=?,username=?, mobile=?,problems=?,message=?,status=? where username=?");
pstmt.setString(1, cn);
pstmt.setString(2,dn);
pstmt.setString(3,u);
pstmt.setString(4,mb);
pstmt.setString(5, p);
pstmt.setString(6, ms);
pstmt.setString(7, st);
pstmt.setString(8, u);
int i=pstmt.executeUpdate();
System.out.print(ms);
if(i==1){
		response.sendRedirect("constitutionhome.jsp");
}
else{
	RequestDispatcher rd=request.getRequestDispatcher("consprobupdate.jsp");
	rd.include(request, response);
	out.print("update not done");
}

%>
</body>
</html>