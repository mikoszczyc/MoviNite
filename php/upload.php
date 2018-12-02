<?php
  if (isset($_POST['submit-upload'])) {
    include_once 'dbh.inc.php';
    function getBetween($content,$start,$end){
    $r = explode($start, $content);
    if (isset($r[1])){
        $r = explode($end, $r[1]);
        return $r[0];
}}

    $file = $_FILES['movieCover'];

    $fileName = $_FILES['movieCover']['name'];
    $fileTmpName = $_FILES['movieCover']['tmp_name'];
    $fileSize = $_FILES['movieCover']['size'];
    $fileError = $_FILES['movieCover']['error'];
    $fileType = $_FILES['movieCover']['type'];

    $movieTitle = $_POST['movieTitle'];
    $movieDesc = $_POST['movieDesc'];
    $movieDirector = $_POST['movieDirector'];
    $movieReleaseDate = $_POST['movieReleaseDate'];
    $movieTrailerUrl = $_POST['movieTrailerUrl'];

    $movieTrailerUrl = substr($movieTrailerUrl, strpos($movieTrailerUrl,"=")+1);

    $datatitleURL = $_POST['datatitle'];
    $start = "imdb.com/title/";
    $end = "/";
    $datatitle = getBetween($datatitleURL,$start,$end);

    //extract extention and make it lowercase
    $fileExt = explode('.',$fileName);
    $fileActualExt = strtolower(end($fileExt));

    $allowed = array('jpg','jpeg','png');

    if (in_array($fileActualExt, $allowed)) {
      if ($fileError===0) {
        if($fileSize < 1000000){
          // names file with unique id
          $fileNameNew = $datatitle.".".$fileActualExt;
          $fileDestination = '../img/movieCovers/'.$fileNameNew;
          move_uploaded_file($fileTmpName, $fileDestination);

          $query = "INSERT INTO `movies` (`movieTitle`, `movieDesc`, `director`, `movieReleaseDate`, `datatitle`, `movieTrailerUrl`) VALUES ('$movieTitle', '$movieDesc', '$movieDirector', '$movieReleaseDate', '$datatitle', '$movieTrailerUrl')";
          mysqli_query($conn, $query);

          header("location: ../index.php?=uploadSuccess");
        }else {
          echo "Your file is to big!";
        }
      }
      else {
        echo "There was an error uploading your file!";
      }
    } else {
      echo "You cannot upload files of this type!";
    }
  }
