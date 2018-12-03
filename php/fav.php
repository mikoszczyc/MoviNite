<?php
session_start();

if (isset($_SESSION['userId'])) {
  // echo $_GET['id'];
  $userid = $_SESSION['userId'];
  $movieid = $_GET['id'];
  include 'dbh.inc.php';

  $query = "SELECT `userID` FROM `favorites` WHERE `userID`='$userid' AND `movieID` = '$movieid'";
  if($result = mysqli_query($conn, $query)){
    if (mysqli_num_rows($result) == 0) {
      $query = "INSERT INTO `favorites` (`userID`, `movieID`) VALUES ('$userid', '$movieid')";
      mysqli_query($conn, $query);
      header('location: ../index.php#favourites');
    } else {
      $query = "DELETE FROM `favorites` WHERE `favorites`.`userID` = '$userid' AND `favorites`.`movieID` = '$movieid'";
      mysqli_query($conn, $query);

      header('location: ../index.php#favourites');
    }}}
