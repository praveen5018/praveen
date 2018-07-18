<%@page import="userbean.userbean"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="org.hibernate.cfg.Configuration"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-color:lightblue;">

<h1>User Details</h1>

<table border="2">
<tr>
<th>UserName</th>
<th>Password</th>
<th>Email</th>
<th>Id</th>
<th>To Do's</th>
</tr>

	<%
	
	Configuration cfg= new Configuration();
	
	cfg.configure("hibernate.cfg.xml");
	
	SessionFactory factory= cfg.buildSessionFactory();

    Session session2=factory.openSession(); 
	
	List l= session2.createQuery("from userbean").list();
	
	Iterator itr= l.iterator();
	
	while(itr.hasNext())
		
	{
		
	userbean user=(userbean)itr.next();

	%>

	<tr>
		<td><%=user.getUsername() %></td>
		<td><%=user.getPassword() %></td>
		<td><%=user.getEmail() %></td>
		<td><%=user.getId() %></td>
		
		<td><a href="edit.jsp?id=<%=user.getId()%>">Edit</td>
		
		<td><a href="delete.jsp?id=<%=user.getId()%>">Delete</a></td>
		
	</tr>
	<%

	}
	
	%>
	</table>
	
	<a href="index.jsp">Back</a>
	
</body>
</html>

