<%@page import="userbean.userbean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Profile</title>
</head>
<body style="background-color:lightblue;">

 <%
        if (request.getParameter("m1") != null) {%>
    <script>alert('Student login success');</script>
    <%}
        if (request.getParameter("m2") != null) {%>
    <script>alert('Login Failed Username/Password Wrong');</script> 

    <%}
       
    %>


<br>
<center>
<b><p><font size="5">Cubic It Solution PVT LTD<p></font></b>


&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<h1 style="color:red;"><font size="4">Student Details</font></h1>

<%userbean user=(userbean)session.getAttribute("usersession"); %>

<h1>Name:<%=user.getsname() %></h1>
<h1>Email:<%=user.getemail() %></h1>
<h1>RollNo:<%=user.getrno() %></h1>
<h1>Marks:<%=user.getmarks() %></h1>
<br>
<a href="index.jsp">Logout</a>
</center>
</body>
</html>