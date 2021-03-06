<!DOCTYPE html>
<%@page import="userbean.userbean"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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
<%

userbean user=(userbean)session.getAttribute("anuroop");
try{
%>
<body id="body">

  <!--==========================
    Top Bar
  ============================-->
  <section id="topbar" class="d-none d-lg-block">
    <div class="container clearfix">
   <h3><a href="#body" class="scrollto">BJP</a></h3>
      <div class="social-links float-right">
       <h2><a href="consprofile.jsp" class="scrollto">Welcome <%=user.getUsername() %></a></h2>
      </div>
    </div>
  </section>

  <!--==========================
    Header
  ============================-->
  <header id="header">
    <div class="container">

      <div id="logo" class="pull-left">
        <h1><a href="#body" class="scrollto">To<span>The</span>People.</a></h1>
        <!-- Uncomment below if you prefer to use an image logo -->
        <!-- <a href="#body"><img src="img/logo.png" alt="" title="" /></a>-->
      </div>

      <nav id="nav-menu-container">
        <ul class="nav-menu">
          <li class="menu-active"><a href="constitutionhome.jsp">Home</a></li>
          
         
           <li class="menu-has-children"><a href="">Profile</a>
            <ul>
              <li><a href="consprofile.jsp">View Profile</a></li>
              <li><a href="consprofileedit.jsp">Edit Profile</a></li>
              <li><a href="home.jsp">Logout</a></li>
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

    <!--==========================
      About Section
    ============================-->
    <!-- #about -->

    <!--==========================
      Services Section
    ============================-->
    <section id="services">
      <div class="container">
        <div class="section-header">
          <h2>Divisions</h2>
    
        </div>
		<div class="row">

 <%
     try {
 		userbean b= new userbean();
 		userbean c=(userbean)session.getAttribute("anuroop");
 		System.out.print("div"+c.getDivison());
    		Class.forName("oracle.jdbc.driver.OracleDriver");
    		Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","anuroop","anuroop");
    		 PreparedStatement pstmt=con.prepareStatement("select * from condiv where constitution=? and type=?");
    		     pstmt.setString(1,c.getConstitution());
    		     pstmt.setString(2, "division");
    		    ResultSet rs=pstmt.executeQuery();  
    		 
    	while(rs.next()){
    		
    			%>
    			
    			<div class="col-lg-6">
            <div class="box wow fadeInLeft">
              <div class="icon"><i class="fa fa-bar-chart"></i></div>
              <h4 class="title"><a href="consdivprob.jsp?user=<%=rs.getString(2)%>"><%=rs.getString(2)%></a></h4>
              <%
              PreparedStatement pstm=con.prepareStatement("select count(status) as total from problems where divname=? and status=?");
              pstm.setString(1, rs.getString(2));
              System.out.print(rs.getString(2));
              pstm.setString(2, "pending");  
              ResultSet rs1=pstm.executeQuery();
              while(rs1.next()){
            
              %>
    
              <p class="description">Pending Problems=<%=rs1.getString("total") %></p>
            </div>
          </div>
     
<%
              }	
    		}
     }catch(Exception e) {
 		e.printStackTrace();
 	}

%>
		</div>
      </div>
    </section><!-- #services -->

   
    
  </main>

  <!--==========================
    Footer
  ============================-->
  <footer id="footer">
    <div class="container">
      <div class="copyright">
        &copy; Copyright <strong>Cubic It Solution</strong>. All Rights Reserved
      </div>
      <div class="credits">
        <!--
          All the links in the footer should remain intact.
          You can delete the links only if you purchased the pro version.
          Licensing information: https://bootstrapmade.com/license/
          Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/buy/?theme=Reveal
        -->
        <a href="http://cubicitsolution.co.in/index.php">Cubic It Solution Pvt Ltd.</a>
      </div>
    </div>
  </footer><!-- #footer -->

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
