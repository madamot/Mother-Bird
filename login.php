<?php
  require "header.php";
 ?>

<section class="dataform">

  <div class="inner">

     <h1>Login</h1>

     <form action="includes/login.inc.php" method="post">
       <input type="text" id="username" name="mailuid" placeholder="Username/E-mail...">
       <div id="feedback"></div>
       <input type="password" name="pwd" placeholder="Password...">
       <button type="submit" name="login-submit">Login</button>
     </form>

     <br>
     <p id="signup">Don't have an account? <a href="signup.php">Register</a> one now!</p>

   </div>

</section>

     <?php
       if (isset($_SESSION['userId'])) {
         echo '<p>You are logged in</p>';
       }
       else {
         echo '<p>You are logged out</p>';
       }
      ?>

     <?php
       require "footer.php"
      ?>



  <!-- <form action="includes/login.inc.php" method="post">
    <input type="text" name="mailuid" placeholder="Username/E-mail...">
    <input type="password" name="pwd" placeholder="Password...">
    <button type="submit" name="login-submit">Login</button>
  </form>
  <a href="signup.php">Sign Up</a>

  <form action="includes/logout.inc.php" method="post">
    <button type="submit" name="logout-submit">Log Out</button>
  </form> -->
