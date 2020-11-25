<?php

$servername = "db772969286.hosting-data.io";
$dBUsername = "db772969286";
$dBPassword = "dbo772969286";
$dBName = "motherbird";

$conn = mysqli_connect($servername, $dBUsername, $dBPassword, $dBName);

if (!$conn) {
  die("Connection failed: ".mysqli_connect_error());
}
