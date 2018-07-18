<%@page import="org.hibernate.Query"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="org.hibernate.cfg.Configuration"%>
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

int id=Integer.parseInt(request.getParameter("id"));

Configuration cfg=new Configuration();

cfg.configure("hibernate.cfg.xml");

SessionFactory factory =cfg.buildSessionFactory();

Session session4=factory.openSession();

Transaction tr=session4.beginTransaction();

Query q=session4.createQuery("from userbean where id=:idd");

q.setInteger("idd", id);

userbean u=(userbean)q.uniqueResult();

session4.delete(u);

tr.commit();


%>

<a href="index.jsp">Home</a>



</body>
</html>