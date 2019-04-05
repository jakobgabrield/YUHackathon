<?php
  session_start();

  if (!isset($_SESSION['username'])) {
  	$_SESSION['msg'] = "You must log in first";
  	header('location: login.php');
  }
  if (isset($_GET['logout'])) {
  	session_destroy();
  	unset($_SESSION['username']);
  	header("location: login.php");
  }
  // connect to the database
  $db = mysqli_connect('10.145.23.128', 'parth', '', 'investo');
  if (isset($_POST['invest'])) {
    $query = "select remaining from completed where cid = ".$_POST['invest'];
    $result = mysqli_query($db, $query);
    echo $result;
    //$query = "insert into stakes values((select id from users where username = '".$_SESSION['username']."'), ".$_POST['invest'].",'".$_POST['investamount']."');";
    //$result = mysqli_query($db, $query);
    //header('location: index.php');
  }

?>
