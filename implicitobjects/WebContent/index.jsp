<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>IMPLICIT OBJECTS</h1>
<H1>REQUEST</H1>
<form action="welcome.jsp">
UserName:<input type="text" name="username">
<input type="submit" value="go">

</form>
<h1>RESPONSE</h1>
<form action="welcome1.jsp">
UserName:<input type="text" name="username">
<input type="submit" value="go">

</form>
<h1>CONFIG</h1>
<form action="welcome">
UserName:<input type="text" name="username">
<input type="submit" value="go">

</form>
<h1>APPLICATION</h1>
<form action="welcomeee">
UserName:<input type="text" name="username">
<input type="submit" value="go">

</form>
<h1>SESSION</h1>
<form action="welcome5.jsp">
UserName:<input type="text" name="username">
<input type="submit" value="go">
</form>
<h1>PAGE CONTEXT</h1>
<form action="welcome7.jsp">
UserName:<input type="text" name="username">
<input type="submit" value="go">

</form>
<h1>EXCEPTION</h1>
<form action="welcome9.jsp">
A Value:<input type="text" name="a">
B Value:<input type="text" name="b">
<input type="submit" value="go">
</form>
</body>
</html>