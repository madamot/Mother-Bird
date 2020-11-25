<?php

if (isset($_POST['tracker-submit'])) {

  require 'dbh.inc.php';

  $trackeruid = $_POST['trackeruid'];
  $trackerType = $_POST['trackerType'];
  $idUser = $_SESSION['userId'];

if (empty($trackeruid) || empty($trackerType)) {
  header("Location: ../dashboard.php?error=emptyfields");
}
else if (!preg_match("/^[a-zA-Z0-9]*$/", $trackeruid)) {
  header("Location: ../dashboard.php?error=invalidtrackeruid");
  exit();
}
else {
  $sql = "INSERT INTO trackers (idUsers, uidTracker, trackerType) VALUES (?, ?, ?)";
  $stmt = mysqli_stmt_init($conn);
  if (!mysqli_stmt_prepare($stmt, $sql)) {
    header("Location: ../dashboard.php?error=sqlerror");
    exit();
  }
  else {
    mysqli_stmt_bind_param($stmt, "iss", $idUser, $trackeruid, $trackerType);
    mysqli_stmt_execute($stmt);
    header("Location: ../dashboard.php?signup=success");
    exit();
  }
}
mysqli_stmt_close($stmt);
mysqli_close($conn);

}
else {
  header("Location: ../dashboard.php");
  exit();
}
