<?php
  session_start();

  require_once('./function.php');
  if (isset($_POST['signup-submit'])) {
    include_once 'dbh.inc.php';

    //pobranie danych z formularza

    $username = check($_POST['username']);
    $email1 = check($_POST['email1']);
    $email2 = check($_POST['email2']);
    $password1 = check($_POST['password1']);
    $password2 = check($_POST['password2']);

    equal($email1, $email2, "Emails don't match");
    equal($password1, $password2, "Passwords don't match");


    $email1 = mysqli_real_escape_string($conn, $_POST['email1']);
    $username = mysqli_real_escape_string($conn, $_POST['username']);
    $password1 = mysqli_real_escape_string($conn, $_POST['password1']);
    $hashedPwd = password_hash($password1, PASSWORD_DEFAULT);

    if (empty($email1) || empty($username) || empty($password1)) {
      header("Location: ../index.php?signup=empty");
    }
    else {
      if (!filter_var($email1, FILTER_VALIDATE_EMAIL)) {
        header("Location: ../index.php?signup=invalidemail");
      }
      else {
        $query = "SELECT `email` FROM `users` WHERE `email` = '$email1'";
        if($result = mysqli_query($conn, $query)){
          if (mysqli_num_rows($result) == 0) {
            $sqlSignup = "INSERT INTO users (username, password, email) VALUES ('$username', '$hashedPwd', '$email1')";
            mysqli_query($conn, $sqlSignup);
            header("Location: ../index.php?signup=success");
          }
          else {
            header("Location: ../index.php?signup=mailexists");
          }
        }

      }
    }
  }
  else {
    header("Location: ../index.php?signup=error");
  }
