<%@page import="userbean.userbean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-color:lightblue;">

<%userbean user=(userbean)session.getAttribute("usersession");%>
<h1>Name::::<%=user.getusername() %></h1>
<h1>Password:::<%=user.getpassword() %></h1>
<h1>Email:<%=user.getemail() %></h1>

<a href="profile1.jsp">CLICK HERE</a>





</body>
</html>