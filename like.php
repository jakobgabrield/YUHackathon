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
  $db = mysqli_connect('localhost', 'root', '', 'investo');
  if (isset($_POST['like'])) {
    $query = "insert into likes values((select id from users where username = '".$_SESSION['username']."'), ".$_POST['like'].");";
    $result = mysqli_query($db, $query);
    header('location: index.php');
  }
  if (isset($_POST['invest'])) {
    /*$query = "select remaining from completed where cid = ".$_POST['invest'];
    $result = mysqli_query($db, $query);
    $row = mysqli_fetch_array($result);
    $remaining =  $row[0];
    $query = "select funding_required, stake from companies where cid = ".$_POST['invest'];
    $result = mysqli_query($db, $query);
    $row = mysqli_fetch_array($result);
    //echo $row[0] . "    ";
    //echo $row[1] . "  ";
    $investmoney = $_POST['investamount'.$_POST['invest']];
    $percent = ($investmoney * $row[1])/$row[0];
    $query = "update completed set remaining = ". ($remaining-$investmoney) . " where cid = ".$_POST['invest'];
    //echo $query;
    $result = mysqli_query($db, $query);

    $query = "insert into stakes values((select id from users where username = '".$_SESSION['username']."'), ".$_POST['invest'].",".$investmoney.",".$percent.");";
    //echo $query;
    $result = mysqli_query($db, $query);*/
    $votes = $_POST['votes'.$_POST['invest']];
    $query = "insert into votes values((select id from users where username = '".$_SESSION['username']."'), ".$_POST['invest'].",".$votes.");";
    $result = mysqli_query($db, $query);
    header('location: index.php');
  }

?>
