<?php
include "connect.php";
if ($_SERVER['REQUEST_METHOD'] == "POST"){

  $username = filter_var($_POST['username'] , FILTER_SANITIZE_STRING) ;
  $email    = filter_var($_POST['email'] , FILTER_SANITIZE_EMAIL);
  $password =  $_POST['password'] ;

  // check if user excist

  $stmtcheck = $con->prepare("SELECT * FROM users WHERE email = ?");
  $stmtcheck->execute(array($email)) ;
  $row = $stmtcheck->rowcount() ;
  if ($row > 0 ) {
    echo json_encode(array('status' => "email already found"));
  }else { // if user not exist =>  not rigister => start register
    $stmt   = $con->prepare("INSERT INTO users(`username` , `email` , `password`) VALUES (? , ? , ?)") ;
    $stmt->execute(array($username , $email , $password)) ;
    $row = $stmt->rowcount() ;
    if ($row > 0) {
      // echo "success" ;
      echo json_encode(array('username' => $username ,'email' => $email ,'password' => $password , 'status' => "success"));
    }
  }
  // End Check
}
?>
