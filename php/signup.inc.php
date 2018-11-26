<?php
  if (isset($_POST['signup-submit'])) {
    include_once 'dbh.inc.php';

    $email = mysqli_real_escape_string($conn, $_POST['email']);
    $username = mysqli_real_escape_string($conn, $_POST['username']);
    $password = mysqli_real_escape_string($conn, $_POST['password']);
    $hashedPwd = password_hash($password, PASSWORD_DEFAULT);

    if (empty($email) || empty($username) || empty($password)) {
      header("Location: ../index.php?signup=empty");
    }
    else {
      if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
        header("Location: ../index.php?signup=invalidemail");
      }
      else {
        $sqlSignup = "INSERT INTO users (username, password, email) VALUES ('$username', '$hashedPwd', '$email')";
        mysqli_query($conn, $sqlSignup);

        header("Location: ../index.php?signup=success");
      }
    }
  }
  else {
    header("Location: ../index.php?signup=error");
  }
