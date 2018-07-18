<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
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
  
  <%
        if (request.getParameter("m1") != null) {%>
    <script>alert('User Registration success');</script>
    <%}
        if (request.getParameter("m2") != null) {%>
    <script>alert('Registarion Failed / Wrong');</script> 

    <%}
       
    %>
  
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
					<li role="presentation"><a href="index.jsp">Home</a></li>
						<li role="presentation"><a href="admin.jsp">Admin</a></li>
						<li role="presentation" class="active"><a href="user.jsp">User</a></li>
						<li role="presentation"><a href="contact.jsp">Contact</a></li>					
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
<form action="registerservlet" method="post">

<h3  style="color:#109173";>User Sign in</h3><br>

<h5 style="color:blue;">Username :
&nbsp;&nbsp;&nbsp;<input type="text" name="uname"/></h5>

<h5 style="color:blue;">Password  :
&nbsp;&nbsp;&nbsp;&nbsp;<input type="password" name="password"/></h5>

<!-- <h5 style="color:blue;">DOB  :
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="date" name="date"/></h5> -->

<h5 style="color:blue;">Email Id : 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="email"/></h5>


<h5 style="color:blue;">EmployeeId :
<input type="text" name="id"/></h5>

<h5 style="color:blue;">Address  :
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="address"/></h5>
<br>

<input type="submit" value="Register"></input>
</form>
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