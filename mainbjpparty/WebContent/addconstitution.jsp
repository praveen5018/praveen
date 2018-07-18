<!DOCTYPE html>
<%@page import="userbean.userbean"%>
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

%>
<body id="body">
<script type="text/javascript">
function confirm_click()
{
return confirm("Are you sure you want to add ?");
}
</script>
<script type="text/javascript">
    function repeatPass() {
        var pass = document.getElementById("pass").value
        var reppass = document.getElementById("r_pass").value
        if(pass != reppass) {
            alert('Wrong confirm password !');
        }
    }
</script>

  <!--==========================
    Top Bar
  ============================-->
  <section id="topbar" class="d-none d-lg-block">
    <div class="container clearfix">
   <h3><a href="#body" class="scrollto">BJP</a></h3>
      <div class="social-links float-right">
       <h2><a href="profile.jsp" class="scrollto"><%=user.getUsername() %></a></h2>
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
          <li class="menu-active"><a href="adminhome.jsp">Home</a></li>
          
          <li class="menu-has-children"><a href="">Constitution</a>
            <ul>
              <li><a href="addconstitution.jsp">Add Constitution</a></li>
              <li><a href="viewconstitution.jsp">View Constitution</a></li>
             
            </ul>
             
          </li>
		  <li class="menu-has-children"><a href="">Division</a>
            <ul>
              <li><a href="adddivision.jsp">Add Division</a></li>
              <li><a href="divisions.jsp">View Division</a></li>           
            </ul>
          </li>
          <li><a href="adminallprob.jsp">problems</a></li>
          <li class="menu-has-children"><a href="">Profile</a>
            <ul>
              <li><a href="profile.jsp">View Profile</a></li>
              <li><a href="adminprofileedit.jsp">Edit Profile</a></li>
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
          <h2>Add Constitution</h2>
          
        </div>

         <form action="addservlet" method="post"  >
		  <div class="form-group">
              <input type="text" class="form-control" name="constitution" id="subject" placeholder="Constitution" required="" data-rule="minlen:4" data-msg="Please enter at least 8 chars of subject" />
              <div class="validation"></div>
            </div>
            <div class="form-row">
              <div class="form-group col-md-6">
                <input type="text" name="firstname" class="form-control" id="name" placeholder="First Name" required="" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
                <div class="validation"></div>
              </div>
              <div class="form-group col-md-6">
                <input type="text" name="lastname" class="form-control" id="name" placeholder="Last Name" required="" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
                <div class="validation"></div>
              </div>
            </div>
			<div class="form-row">
               <div class="form-group col-md-6">
                <input type="email" class="form-control" name="email" id="email" placeholder="Email" required="" data-rule="email" data-msg="Please enter a valid email" />
                <div class="validation"></div>
              </div>
              <div class="form-group col-md-6">
                <input type="text" name="mobile" class="form-control" id="name" placeholder="Mobile" required="" pattern ="[6-9]{1}[0-9]{9}"data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
                <div class="validation"></div>
              </div>
            </div>
			<div class="form-row">
              <div class="form-group col-md-6">
                <input type="text" name="username" class="form-control" id="name" placeholder="User Name" required="" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
                <div class="validation"></div>
              </div>
              <div class="form-group col-md-6">
                <input type="text" name="password" class="form-control" id="pass" placeholder="Password" required="" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
                <div class="validation"></div>
              </div>
            </div>
			<div class="form-row">
              <div class="form-group col-md-6">
                <input type="text" name="repeatpassword" class="form-control" id="r_pass" placeholder="Repeat Password" required="" onblur="repeatPass()" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
                <div class="validation"></div>
              </div>
              <div class="form-group col-md-6">
            
              <label>Gender</label>::: Male:
             <input type="radio" class="flat" name="gender" id="genderM" value="Male" checked="" required /> Female:
             <input type="radio" class="flat" name="gender" id="genderF" value="Female" />
                                        
              </div>
              
            </div>
            <div>
            <input type="hidden" name="type" value="constitution"> 
            
            </div>
           
            <div class="text-center"><button type="submit" onclick="return confirm_click();">Add Constitution</button></div>
          </form>

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

  <!-- Template Main Javascript File -->
  <script src="js/main.js"></script>

</body>
</html>
