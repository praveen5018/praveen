<!DOCTYPE html>
<%@page import="userbean.userbean"%>
<%@page import="java.sql.*"%>

<html lang="en">
<head>
  <meta charset="utf-8">
  <title>BJP</title>
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta content="" name="keywords">
  <meta content="" name="description">

  <!-- Favicons -->
  <link href="img/favicon.png" rel="icon">
  <link href="img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Raleway:300,400,500,700,800|Montserrat:300,400,700" rel="stylesheet">

  <!-- Bootstrap CSS File -->
  <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Libraries CSS Files -->
  <link href="lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
  <link href="lib/animate/animate.min.css" rel="stylesheet">
  <link href="lib/ionicons/css/ionicons.min.css" rel="stylesheet">
  <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
  <link href="lib/magnific-popup/magnific-popup.css" rel="stylesheet">
  <link href="lib/ionicons/css/ionicons.min.css" rel="stylesheet">

  <!-- Main Stylesheet File -->
  <link href="css/style.css" rel="stylesheet">

  <!-- =======================================================
    Theme Name: Reveal
    Theme URL: https://bootstrapmade.com/reveal-bootstrap-corporate-template/
    Author: BootstrapMade.com
    License: https://bootstrapmade.com/license/
  ======================================================= -->
</head>

<body id="body">

<%

userbean user=(userbean)session.getAttribute("constitution");
try{
%>

  <!--==========================
    Top Bar
  ============================-->
  <section id="topbar" class="d-none d-lg-block">
    <div class="container clearfix">
      <div class="contact-info float-left">
        <i class="fa fa-envelope-o"></i> <a href="mailto:contact@example.com">contact@example.com</a>
        <i class="fa fa-phone"></i> +1 5589 55488 55
      </div>
      <div class="social-links float-right">
        <a href="#" class="twitter"><i class="fa fa-twitter"></i></a>
        <a href="#" class="facebook"><i class="fa fa-facebook"></i></a>
        <a href="#" class="instagram"><i class="fa fa-instagram"></i></a>
        <a href="#" class="google-plus"><i class="fa fa-google-plus"></i></a>
        <a href="#" class="linkedin"><i class="fa fa-linkedin"></i></a>
      </div>
    </div>
  </section>

  <!--==========================
    Header
  ============================-->
  <header id="header">
    <div class="container">

      <div id="logo" class="pull-left">
        <h1><a href="#body" class="scrollto">National<span>Party</span></a></h1>
        <!-- Uncomment below if you prefer to use an image logo -->
        <!-- <a href="#body"><img src="img/logo.png" alt="" title="" /></a>-->
      </div>

      <nav id="nav-menu-container">
        <ul class="nav-menu">
          <li class="menu-active"><a href="admin.jsp">Home</a></li>
          
          <li class="menu-has-children"><a href="">Constitutions</a>
            <ul>
              <li><a href="addConstitution.jsp">Add Constitution</a></li>
              <li><a href="viewConstitution.jsp">View Constitutions</a></li>
              
            </ul>
          </li>
          
          
          <li class="menu-has-children"><a href="">Divisions</a>
            <ul>
              <li><a href="addDivision.jsp">Add Division</a></li>
              <li><a href="admindiv.jsp">View Divisions</a></li>
              
            </ul>
          </li>
           <li class="menu-active"><a href="adminallprob.jsp">Problems</a></li>
          <li class="menu-has-children"><a href="">Profile</a>
            <ul>
              <li><a href="profile.jsp">View Profile</a></li>
              <li><a href="#">Edit Prifile</a></li>
              <li><a href="logout.jsp">Logout</a></li>
            </ul>
          </li>
        </ul>
      </nav><!-- #nav-menu-container -->
    </div>
  </header><!-- #header -->

  <!--==========================
    Intro Section
  ============================-->
  

  <main id="main">
<%
String probl=request.getParameter("user");
%>
   
    <section id="services">
      <div class="container">
        <div class="section-header">
          <h2>Problems</h2>
          
		  <div class="container">
              
  <table class="table">
  
    <thead>
      <tr>
	 	 
        <th>Con.Name</th>
        <th>Div.Name</th>
        <th>Username</th>
        <th>MobileNo</th>
        <th>Problem</th>
		<th>Status</th>
		
      </tr>
    </thead>
    <tbody>
    <%
     try {
 		
    		Class.forName("oracle.jdbc.driver.OracleDriver");
    		Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","kranthi","kranthi");
    		 PreparedStatement ptst=con.prepareStatement("select * from problems where div_name=?");
    		   ptst.setString(1, probl);
    		    ResultSet rs=ptst.executeQuery();  
    		 
    	while(rs.next()){
    		
    			%>
      <tr>
      
        <td><%=rs.getString(1) %></td>
        <td><%=rs.getString(2) %></td>
        <td><%=rs.getString(3) %></td>
		<td><%=rs.getString(4) %></td>
		<td><%=rs.getString(5) %></td>
		<td><%=rs.getString(7) %></td>
		
      </tr>
      
      
    </tbody>
    <%
    		
    		}
     }catch(Exception e) {
 		e.printStackTrace();
 	}

%>
  </table>
</div>
  
        </div>

        <div class="row">

        </div>

      </div>
    </section><!-- #services -->

  </main>

  <!--==========================
    Footer
  ============================-->
  <script type="text/javascript">
        window.history.forward();
        function noBack()
        {
            window.history.forward();
        }
</script>

  <a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>

  <!-- JavaScript Libraries -->
  <script src="lib/jquery/jquery.min.js"></script>
  <script src="lib/jquery/jquery-migrate.min.js"></script>
  <script src="lib/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="lib/easing/easing.min.js"></script>
  <script src="lib/superfish/hoverIntent.js"></script>
  <script src="lib/superfish/superfish.min.js"></script>
  <script src="lib/wow/wow.min.js"></script>
  <script src="lib/owlcarousel/owl.carousel.min.js"></script>
  <script src="lib/magnific-popup/magnific-popup.min.js"></script>
  <script src="lib/sticky/sticky.js"></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyD8HeI8o-c1NppZA-92oYlXakhDPYR7XMY"></script>
  <!-- Contact Form JavaScript File -->
  <script src="contactform/contactform.js"></script>

  <!-- Template Main Javascript File -->
  <script src="js/main.js"></script>
<%
response.setHeader("Cache-Control","no-cache");
  response.setHeader("Cache-Control","no-store");
  response.setHeader("Pragma","no-cache");
  response.setDateHeader ("Expires", 0);

  if(session.getAttribute("anuroop")==null)
      response.sendRedirect("home.jsp");
}catch(Exception e)
{
	response.sendRedirect("home.jsp");
}
  
  %>
</body>
</html>
