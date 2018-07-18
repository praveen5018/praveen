<!DOCTYPE html>
<%@page import="java.sql.Connection"%>
<%@page import="userbean.userbean"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
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

userbean user=(userbean)session.getAttribute("anuroop");

%>
  <!--==========================
    Top Bar
  ============================-->
  <section id="topbar" class="d-none d-lg-block">
    <div class="container clearfix">
   <h3><a href="#body" class="scrollto">BJP</a></h3>
      <div class="social-links float-right">
       <h2><a href="profile.jsp" class="scrollto">Welcome <%=user.getUsername() %></a></h2>
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
      Services Section
    ============================-->
    <section id="services">
      <div class="container">
        <div class="section-header">
          <h2>Division</h2>
          
        </div>
<%
try{
String username=request.getParameter("user");
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","anuroop","anuroop");
PreparedStatement pstmt=conn.prepareStatement("select * from condiv where username=?");
pstmt.setString(1, username);
ResultSet rs=pstmt.executeQuery();
boolean req=rs.next();
%>
         <form action="profileeditservlet.jsp" method="post" role="form" class="contactForm">
       	 



<br><br>
              <div class="form-row">
              <div class="form-group col-md-6">
                <input type="text" name="firstname"   class="form-control" id="name"value=<%=user.getFirstname() %> placeholder=" userame" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
                <div class="validation"></div>
              </div>
              <div class="form-group col-md-6">
                <input type="text" name="lastname"  class="form-control" id="name"value=<%=user.getLastname()%> placeholder="mobile" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
                <div class="validation"></div>
              </div>
            </div>
		 
            <div class="form-row">
              <div class="form-group col-md-6">
                <input type="text" name="email" value=<%=user.getEmail() %> class="form-control" id="name" placeholder=" userame" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
                <div class="validation"></div>
              </div>
              <div class="form-group col-md-6">
                <input type="text" name="mobile"value=<%=user.getMobile() %> class="form-control" id="name" placeholder="mobile" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
                <div class="validation"></div>
              </div>
            </div>
			
			 <div class="form-row">
              <div class="form-group col-md-6">
                <input type="text" name="username" value=<%=user.getUsername() %> class="form-control" id="name" placeholder=" userame" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
                <div class="validation"></div>
              </div>
              <div class="form-group col-md-6">
                <input type="text" name="password"value=<%=user.getPassword() %> class="form-control" id="name" placeholder="mobile" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
                <div class="validation"></div>
              </div>
            </div>
			
           
			
			 <div class="form-row">
              <div class="form-group col-md-6">
                <input type="text" name="repeatpassword" value=<%=user.getRepeatpassword() %> class="form-control" id="name" placeholder=" userame" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
                <div class="validation"></div>
              </div>
              <div class="form-group col-md-6">
                <input type="text" name="gender"value=<%=user.getGender() %> class="form-control" id="name" placeholder="mobile" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
                <div class="validation"></div>
              </div>
            </div>
             
           
            <div class="text-center"><button type="submit">update Profile</button></div>
          </form>
          <%


}catch(Exception e){
	System.out.println(e);
}


%>

      </div>
    </section><!-- #services -->

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

  <!-- Template Main JavaScript File -->
  <script src="js/main.js"></script>

</body>
</html>
