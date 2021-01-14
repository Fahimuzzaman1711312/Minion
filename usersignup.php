<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" href="style.css">
    <title>User Sign up</title>
  </head>
  <body>

    <!-- ======= Top Bar ======= -->
  <section id="topbar" class="d-none d-lg-block">
    <div class="container d-flex justify-content-between">
      <div class="contact-info">
        <ul>
          <li>
            <i class="icofont-envelope"></i><a href="mailto:contact@example.com">contact@example.com</a>
          </li>
          <li><i class="icofont-phone"></i> +880-17123456789</li>
          </li>
          <li><i class="icofont-address-book"></i> Bashundhara, Dhaka-1229</li>
        </ul>
      </div>
    </div>
  </section>

  <!-- ======= Header ======= -->
  <header id="header">
    <div class="container d-flex justify-content-between">
      <div class="logo">
        <h1 class="text-light">
          <a href="index.html"><span>MINION</span></a>
        </h1>
        <!-- Uncomment below if you prefer to use an image logo -->
        <!-- <a href="index.html"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->
      </div>

      <nav class="nav-menu d-none d-lg-block">
        <ul>
          <li class="active"><a href="index.html">Home</a></li>
          <li><a href="#about">About</a></li>
          <li><a href="#services">Services</a></li>
          <li><a href="#team">Team</a></li>
          <li><a href="#job">Job</a></li>
          <li><a href="#contact">Contact</a></li>
          <li class="drop-down"><a href="login.html">Login</a>
            <ul>
              <li class="drop-down"><a href="usersignin.php">As User</a></li>
              <li class="drop-down"><a href="workersignin.php">As Worker</a></li>
            </ul>
          </li>
          <li class="drop-down"><a href="register.html" class="btn btn-outline-primary">Sign Up</a>
            <ul>
              <li class="drop-down"><a href="usersignup.php">As User</a></li>
              <li class="drop-down"><a href="Workersignup.php">As Worker</a></li>
            </ul>
          </li>
        </ul>
        <!-- .nav-menu -->
    </div>
  </header>
  <!-- End Header -->


  <a class="btn btn-outline-info" href="usersignup.php" role="button" style="margin-top: 20px; margin-bottom: 20px; margin-left: 46%;">User Sign Up</a>
    <?php require_once 'processusersignup.php'; ?>
    <div class="row justify-content-center">
        <form action="processusersignup.php" method="POST"> <!-- connect with  -->
<!-- taking information -->
            <div class="form-group">
                <label>ID</label>
                <input type="text" name="userid" class="form-control" placeholder="Enter your Id">
            </div>

            <div class="form-group">
                <label>Name</label>
                <input type="text" name="username" class="form-control" placeholder="Enter your name">
            </div>
            <div class="form-group">
                <label>Password</label>
                <input type="password" name="userpassword" class="form-control" placeholder="Enter your Password">
            </div>
            <div class="form-group">
                <label>Phone</label>
                <input type="text" name="userphone" class="form-control" placeholder="Enter your Phone No.">
            </div>
            <div class="form-group">
                <label>Email</label>
                <input type="email" name="useremail" class="form-control" placeholder="Enter your email">
            </div>
            <div class="form-group">
                <label>Adress</label>
                <input type="text" name="useradress" class="form-control" placeholder="Enter your Adress">
            </div>
            <div class="form-group">
                <label>Age</label>
                <input type="number" name="userage" class="form-control" placeholder="Enter your age">
            </div>
            <div class="form-group">
                <label>Gender</label>
                <input type="number" name="usergender" class="form-control" placeholder="Enter your Gender">
            </div>
            <div class="form-group">
                <button type="submit" class="btn btn-primary" name="signup">sign up</button>
            </div>
        </form>
    </div>
    <?php
      if(@$_GET['Incorrect']==true){
    ?>
      <div style="text-align:center;" class="text-danger">
      <?php echo $_GET['Incorrect'] ?>
      
      </div>
    <?php
      }

    ?>
    
<!-- ======= Footer ======= -->
  <footer id="footer" style="margin-top: 110px;">
    <div class="footer-top">
      <div class="container">
        <div class="row">
          <div class="col-lg-3 col-md-6 footer-contact">
            <h3>MINION</h3>
            <p>
              Bashundhara, Dhaka-1229<br />
              Bangladesh <br /><br />
              <strong>Phone:</strong> +88 017 123 456 789<br />
              <strong>Email:</strong> info@example.com<br />
            </p>
          </div>

          <div class="col-lg-2 col-md-6 footer-links">
            <h4>Useful Links</h4>
            <ul>
              <li>
                <i class="bx bx-chevron-right"></i> <a href="#">Home</a>
              </li>
              <li>
                <i class="bx bx-chevron-right"></i> <a href="#">About us</a>
              </li>
              <li>
                <i class="bx bx-chevron-right"></i> <a href="#">Services</a>
              </li>
              <li>
                <i class="bx bx-chevron-right"></i>
                <a href="#">Terms of service</a>
              </li>
              <li>
                <i class="bx bx-chevron-right"></i>
                <a href="#">Privacy policy</a>
              </li>
            </ul>
          </div>

          <div class="col-lg-3 col-md-6 footer-links">
            <h4>Our Services</h4>
            <ul>
              <li>
                <i class="bx bx-chevron-right"></i> <a href="#">Web Design</a>
              </li>
              <li>
                <i class="bx bx-chevron-right"></i>
                <a href="#">Web Development</a>
              </li>
              <li>
                <i class="bx bx-chevron-right"></i>
                <a href="#">Product Management</a>
              </li>
              <li>
                <i class="bx bx-chevron-right"></i> <a href="#">Marketing</a>
              </li>
              <li>
                <i class="bx bx-chevron-right"></i>
                <a href="#">Graphic Design</a>
              </li>
            </ul>
          </div>

          <div class="col-lg-4 col-md-6 footer-newsletter">
            <h4>Join Our Newsletter</h4>
            <p>
              Tamen quem nulla quae legam multos aute sint culpa legam noster
              magna
            </p>
            <form action="" method="post">
              <input type="email" name="email" /><input type="submit" value="Subscribe" />
            </form>
          </div>
        </div>
      </div>
    </div>

    <div class="container d-lg-flex py-4">
      <div class="me-lg-auto text-center text-lg-start">
        <div class="copyright">
          &copy; Copyright <strong><span>MINION</span></strong>. All Rights Reserved
        </div>
        <div class="credits">
          Created by <a href="#">Group 09</a>
        </div>
      </div>
      
    </div>
  </footer>
  <!-- End Footer -->

  <a href="#" class="back-to-top"><i class="icofont-simple-up"></i></a>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/jquery/jquery.min.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/jquery.easing/jquery.easing.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>
  <script src="assets/vendor/jquery-sticky/jquery.sticky.js"></script>
  <script src="assets/vendor/venobox/venobox.min.js"></script>
  <script src="assets/vendor/owl.carousel/owl.carousel.min.js"></script>
  <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="assets/vendor/aos/aos.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>
    
  </body>
</html>


