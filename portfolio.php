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
        <title>Portfolio</title>
    </head>

    <style>
        table {
          border-collapse: collapse;
          width: 100%;
        }

        th, td {
          text-align: left;
          padding: 8px;
        }

        tr:nth-child(even) {background-color: #f2f2f2;}

        /* On smaller screens, where height is less than 450px, change the style of the sidenav (less padding and a smaller font size) */
        @media screen and (max-height: 450px) {
          .sidebar {padding-top: 15px;}
          .sidebar a {font-size: 18px;}
        }

        .sidebar {
          height: 100%;
          width: 0;
          position: fixed;
          z-index: 1;
          top: 0;
          left: 0;
          background-color: #111;
          overflow-x: hidden;
          transition: 0.5s;
          padding-top: 60px;
        }

        .sidebar a {
          padding: 8px 8px 8px 32px;
          text-decoration: none;
          font-size: 25px;
          color: #818181;
          display: block;
          transition: 0.3s;
        }

        .sidebar a:hover {
          color: #f1f1f1;
        }

        .sidebar .closebtn {
          position: absolute;
          top: 0;
          right: 25px;
          font-size: 36px;
          margin-left: 50px;
        }

        .openbtn {
          font-size: 20px;
          cursor: pointer;
          background-color: #111;
          color: white;
          padding: 10px 15px;
          border: none;
          position: fixed;
        }

        .openbtn:hover {
          background-color: #444;
        }
    </style>

    <body>
        <div id="main" style="position: fixed;
        top: 0;
        left: 0;">
            <button class="openbtn" onclick="openNav()">☰ Menu</button>
        </div>

        <div id="mySidebar" class="sidebar">
            <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">×</a>
            <a href="index.php">Home</a>
            <a href="portfolio.php">Portfolio</a>
        </div>

      <?php
        $db = mysqli_connect('localhost', 'root', '', 'investo');
        $query = "select company_name, vote,(select sum(vote) from votes v where v.cid = companies.cid) as total from companies, votes where companies.cid = votes.cid  and votes.uid = (select id from users where username like '" . $_SESSION['username'] . "')";
        $result = mysqli_query($db, $query);
      ?>
        <br/><br/><br/>
        <table>
          <tr><th>Company Name</th><th>Amount Invested</th><th>Funding Recieved</th></tr>
          <?php
            while($row = mysqli_fetch_array($result)){
          ?>

            <tr><th><?php echo $row[0]?></th><td><?php echo "$".($row[1]*50) ?></td><td><?php echo "$".($row[2]*50) ?></td></tr>
          <?php
          }?>
        </table>
        <script src="site.js"></script>
    </body>
</html>
