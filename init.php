<?php
$conn = new mysqli('localhost','root','','project1');
// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}
else
{
	echo "Connection successful<br>";
}
?>