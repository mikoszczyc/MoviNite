<?php
function check($val){
  $val = trim($val);
  $val = htmlspecialchars($val);
  if(empty($val)){
    header('location: ../index.php?rejestracja');
    $_SESSION['error'] = 'emptyFields';
    die();
  }
    return $val;
}

function equal($val1, $val2, $message){
  if ($val1 === $val2) {
    return true;
  }else {
    header('location: ../index.php?rejestracja');
    $_SESSION['error'] = $message;
  }
}

 ?>
