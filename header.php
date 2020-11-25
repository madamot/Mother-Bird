<?php
  session_start();
 ?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Mother Bird</title>
  <link rel="stylesheet" href="master.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<style media="screen">
#map {
  height: 400px;
  width: 100%;
  background-color: grey;
}
</style>
<body>

  <?php
    if (isset($_SESSION['userId'])) {
      echo '<div class="topnav" id="myTopnav">
        <a href="index.php" class="active" id="home"></a>
        <a href="#shop">Shop</a>
        <a href="products.php">Products</a>
        <a href="#about">About</a>
        <a href="#contact">Contact</a>
        <a href="dashboard.php">Dashboard</a>
        <a href="includes/logout.inc.php" name="logout-submit">Log Out</a>
        <a href="javascript:void(0);" class="icon" onclick="myFunction()"><i class="fa fa-bars"></i></a>
      </div>';
    }
    else {
      echo '<div class="topnav" id="myTopnav">
        <a href="index.php" class="active" id="home"></a>
        <a href="#shop">Shop</a>
        <a href="products.php">Products</a>
        <a href="#about">About</a>
        <a href="#contact">Contact</a>
        <a href="signup.php" class="loggin">Sign Up</a>
        <a href="login.php">Login</a>
        <a href="javascript:void(0);" class="icon" onclick="myFunction()"><i class="fa fa-bars"></i></a>
      </div>';
    }
   ?>

    <div>
      <!-- <form action="includes/logout.inc.php" method="post">
        <button type="submit" name="logout-submit">Log Out</button>
      </form> -->

    </div>
  </header>
