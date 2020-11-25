<?php
  require "header.php"
 ?>


  <main>

    <?php
      if (isset($_GET['error'])) {
        if ($_GET['error'] == "emptyfields") {
          echo '<p>Please fill in all the fields!</p>';
        }
        else if ($_GET['error'] == "invalidmailuid") {
          echo '<p>Invalid username and email!</p>';
        }
        else if ($_GET['error'] == "invaliduid") {
          echo '<p>Invalid username!</p>';
        }
        else if ($_GET['error'] == "invalidmail") {
          echo '<p>Invalid e-mail!</p>';
        }
        else if ($_GET['error'] == "passwordcheck") {
          echo '<p>Your passwords don\'t seem to match!</p>';
        }
        else if ($_GET['error'] == "usertaken") {
          echo '<p>Unfortunatrly that username is taken!</p>';
        }
      }
      else if ($_GET['signup'] == "success") {
        // code...
      }
     ?>


   <section class="dataform">

     <div class="inner">

      <h1>Sign Up</h1>

      <form action="includes/signup.inc.php" method="post">
        <input type="text" name="uid" placeholder="Username">
        <input type="text" name="mail" placeholder="E-mail">
        <input type="password" name="pwd" placeholder="Password">
        <input type="password" name="pwd-repeat" placeholder="Repeat Password">
        <button type="submit" name="signup-submit">Signup</button>
      </form>

      </div>

  </section>
  </main>

  <?php
    require "footer.php"
   ?>
