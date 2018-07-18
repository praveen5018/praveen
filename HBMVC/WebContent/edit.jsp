<%@page import="userbean.userbean"%>
<%@page import="org.hibernate.Query"%>
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
<body style="background-color: lightblue">
<center>

<h1>Update User Details</h1>


<%

int id=Integer.parseInt(request.getParameter("id"));

Configuration cfg = new Configuration();

cfg.configure("hibernate.cfg.xml");

SessionFactory factory=cfg.buildSessionFactory();

Session session2=factory.openSession();

Query query=session2.createQuery("from userbean where id=:iddd");

query.setInteger("iddd", id);

userbean user=(userbean)query.uniqueResult();


%>

  	
<form action="update" method="post">

<a style="color:blue">UserName:<input style="color:black" type="text" name="username" value=<%=user.getUsername() %>  ><br><br></a>
<a style="color:blue">PassWord:<input style="color:black" type="text" name="password" value=<%=user.getPassword() %> ><br><br></a>
<a style="color:blue">Email::::<input style="color:black" type="text" name="email" value=<%=user.getEmail() %> ><br><br></a>
<a style="color:blue">Id:::::::<input style="color:black" type="text" name="id" value=<%=user.getId() %> readonly="readonly"><br><br></a>

<input type="submit" value="UPDATE">

</form>  

</center>

</body>
</html>