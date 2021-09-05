<?php
   include('init.php');
   session_start();
   $user_check = $_SESSION['UserName'];
   
   $ses_sql = mysqli_query($conn,"SELECT UserName from users where UserName='$user_check'");
   $row = mysqli_fetch_array($ses_sql);
   
   $login_session = $row['UserName'];
   
   if(!isset($_SESSION['UserName'])){
      header("Location:LoginPage.html");
   }
?>