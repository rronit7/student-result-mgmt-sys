<?php
// Create connection
/*$conn = new mysqli('localhost','root','','project1');
// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}
else
{
	echo "Connection successful!!<br>";
}*/
include("init.php");
session_start();

if($_SERVER['REQUEST_METHOD'] == 'POST'){
$uname = $_POST['UserName'];
$password = $_POST['Password'];
}

$_SESSION['UserName'] = $uname;
$_SESSION['Password'] = $password;


$sql = "SELECT * FROM users WHERE (UserName='$uname' AND
Password='$password')";

$result=mysqli_query($conn,$sql);
$count=mysqli_num_rows($result);
if($count==1) {
            $_SESSION['login_user']=$username;
            header("Location: sidebar.html");
        }else {
            echo '<script language="javascript">';
            echo 'alert("Invalid Username or Password")';
            echo '</script>';
        }

//$conn->close();
?>