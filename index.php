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
?>



<!DOCTYPE html>
<html>
    <head>
        <title>Investo</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" type="text/css" href="style2.css">
    </head>

    <body>
        <div id="main">
            <button class="openbtn" onclick="openNav()">☰ Menu</button>
        </div>

        <div id="mySidebar" class="sidebar">
            <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">×</a>
            <a href="index.php">Home</a>
            <a href="portfolio.php">Portfolio</a>
        </div>
        <?php
          $db = mysqli_connect('localhost', 'root', '', 'investo');
          $query = "select companies.cid, company_name, sector, location, description,image, (select sum(vote) from votes where cid = companies.cid) as total from companies, images where companies.cid=images.cid and companies.cid not in (select likes.cid from likes where uid = (select id from users where username like '" . $_SESSION['username'] . "'))";
          $result = mysqli_query($db, $query);
          $query2 = "select sum(vote) as vote from votes";
          $result2 = mysqli_query($db, $query2);
          $row2 = mysqli_fetch_array($result2);
        ?>
        <br/>
        <br/>
        <center>
          <div style="margin-left: 40%;position: fixed;z-index: 10;">
          Total Funding this round: <?php
          if($row2[0] == null ){
             echo "0";
           } else{
             echo "$".(50*$row2[0]);
           } ?>
         </div>
        </center>
        <form method="post" action="like.php">



        <div id="explorePane">
          <?php
            $counter = 0;
            while($row = mysqli_fetch_array($result)){
          ?>
            <div class="flip-card">
                <div class="flip-card-inner">
                    <div></div>
                    <div class="flip-card-front">
                        <h2><?php echo $row[1] ?></h2>
                        <img class="logo" src= <?php echo $row[5] ?>/>
                        <h3>Industry: <?php echo $row[2] ?></h3>
                    </div>
                    <div class="flip-card-back">
                        <h3><?php echo $row[1] ?></h3>
                        <h3>Total funds:<?php if($row[6] == null ){
                           echo "0";
                         } else{
                           echo $row[6];
                         }  ?></h3>
                        <p><?php echo $row[4] ?>
                        </p>
                            <!--<button type=submit class=btn name=like value=<?php //echo $row[0] ?>>Like</button><br/><br/>-->
                            <input type="text" name=<?php echo "votes".$row[0] ?>>
                            <button type=submit class=btn name=invest value=<?php echo $row[0] ?>>Votes</button>
                    </div>
                </div>
            </div>
            <?php
            }
             ?>
        </div>
      </form>
        <script src="site.js"></script>
    </body>
</html>



<!--

<!DOCTYPE html>
<html>
<head>
	<title>Home</title>
	<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>

<div class="header">
	<h2>Home Page</h2>
</div>
<div class="content">
  	<?php /*if (isset($_SESSION['success'])) : ?>
      <div class="error success" >
      	<h3>
          <?php
          	echo $_SESSION['success'];
          	unset($_SESSION['success']);
          ?>
      	</h3>
      </div>
  	<?php endif */ ?>


    <?php  /*if (isset($_SESSION['username'])) : ?>
    	<p>Welcome <strong><?php echo $_SESSION['username']; ?></strong></p>
    	<p> <a href="index.php?logout='1'" style="color: red;">logout</a> </p>
    <?php endif*/ ?>

    <form method="post" action="like.php">
    <?php
      /*$db = mysqli_connect('10.145.23.128', 'parth', '', 'investo');
      $query = "SELECT * FROM companies";
      $result = mysqli_query($db, $query);

      echo "<table>";
      $counter = 0;
      while($row = mysqli_fetch_array($result)){
          echo "<tr>";
          echo "<td>".$row[0]."</td>";
          echo "<td>".$row[1]."</td>";
          echo "<td>".$row[2]."</td>";
          echo "<td>".$row[4]."</td>";
          echo "<td>".$row[5]."</td>";
          echo "<td>".$row[6]."</td>";
          echo "<td><button type=submit class=btn name=like value=$counter>Like</button></td>";
          echo "</tr>";
          $counter++;
      }
      echo "</table>";*/
     ?>
   </form>

</div>

</body>
</html>
-->
