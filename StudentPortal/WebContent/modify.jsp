<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="userbean.userbean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Student Portal</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" href="css/animate.css">
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" href="css/jquery.bxslider.css">
	<link rel="stylesheet" type="text/css" href="css/normalize.css" />
	<link rel="stylesheet" type="text/css" href="css/demo.css" />
	<link rel="stylesheet" type="text/css" href="css/set1.css" />
	<link href="css/overwrite.css" rel="stylesheet">
	<link href="css/style.css" rel="stylesheet">
    
  </head>
  <body>
		<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
		<div class="container">
			
		<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-collapse.collapse">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
		<a class="navbar-brand" href="index.html"><span>Student Portal</span></a>
		</div>
		<div class="navbar-collapse collapse">							
			<div class="menu">
				<ul class="nav nav-tabs" role="tablist">
					<li role="presentation"><a href="userhome.jsp">Home</a></li>
						<li role="presentation"  class="active"><a href="viewprofile.jsp">View Profile</a></li>
						<li role="presentation"><a href="viewcourses.jsp">View Courses </a></li>
						<li role="presentation"><a href="user.jsp">Logout</a></li>						
				</ul>
				</div>
			</div>			
		</div>
		</nav>
	<div class="container">
		<div class="row">
			<div class="slider">
				<div class="img-responsive">
					<ul class="bxslider">				
						<li><img src="img/01.jpg" alt=""/></li>								
						<li><img src="img/01.jpg" alt=""/></li>	
						<li><img src="img/01.jpg" alt=""/></li>			
					</ul>
				</div>	
			</div>
		</div>
	</div>
		
	<div class="container">
		<div class="row">
<center>					
<h3 style="color:#109173"> Edit Profile</h3><br>

<%
try{
	
String uname=request.getParameter("user");
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","praveen","praveen");
PreparedStatement pstmt=conn.prepareStatement("select * from company where uname=?");
pstmt.setString(1, uname);
ResultSet rs=pstmt.executeQuery();
boolean req=rs.next();
%>
<form action="updateservlet" method="post">

<a style="color:blue">Id::::::::::::::::::<input style="color:black" type="text" name="id"  value=<%=rs.getInt("id") %>><br><br></a>
<a style="color:blue">UserName:<input style="color:black" type="text" name="uname" value=<%=rs.getString("uname") %> readonly><br><br></a>
<a style="color:blue">PassWord:::<input style="color:black" type="text" name="password" value=<%=rs.getString("password") %>><br><br></a>
<a style="color:blue">Email::::::::::::<input style="color:black" type="text" name="email" value=<%=rs.getString("email") %>><br><br></a>
<a style="color:blue">Address:::::::<input style="color:black" type="text" name="address" value=<%=rs.getString("address")%>><br><br></a>
<a style="color:blue">Image:<img src="img/user.jpg" alt="jacket" width="80" height="70"><br><br></a>

<input type="submit" value="UPDATE">

</form>
<% 

}catch(Exception e){
System.out.println(e);
}

%>
</center>
</div>
	</div>
	
	<footer>
		
		
		<div class="last-div">
			<div class="container">
				<div class="row">
					<div class="copyright">
						© CopyRight Developed By Praveen | <a target="_blank" href="http://bootstraptaste.com">cubicitSolution</a>
					</div>	
                    			
				</div>
			</div>
			
			
			
		</div>	
	</footer>
	
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="js/jquery-2.1.1.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
	<script src="js/wow.min.js"></script>
	<script src="js/jquery.easing.1.3.js"></script>
	<script src="js/jquery.isotope.min.js"></script>
	<script src="js/jquery.bxslider.min.js"></script>
	<script type="text/javascript" src="js/fliplightbox.min.js"></script>
	<script src="js/functions.js"></script>	
	<script type="text/javascript">$('.portfolio').flipLightBox()</script>
  </body>
</html>