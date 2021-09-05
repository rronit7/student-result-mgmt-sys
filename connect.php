<?php
// Create connection
/*$conn = new mysqli('localhost','root','','project1');
// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}
else
{
	echo "Connection successful<br>";
}*/
include("init.php");
session_start();
if($_SERVER['REQUEST_METHOD'] == 'POST'){
$rollid = $_POST['rollid'];
$classid = $_POST['classid'];
}



$_SESSION['rollid'] = $rollid;
$_SESSION['classid'] = $classid;

$sql = "SELECT t.StudentName, t.RollId, t.ClassId, t.marks,
tblsubjects.SubjectName FROM
(select sts.StudentName, sts.RollId, sts.ClassId, tr.marks, SubjectId FROM
tblstudents AS sts JOIN tblresult AS tr ON tr.StudentId=sts.StudentId) AS t
JOIN tblsubjects ON tblsubjects.SubjectId=t.SubjectId WHERE (t.RollId=$rollid AND
t.ClassId=$classid)";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
	$row = $result->fetch_assoc();
	echo "Student Name : " . $row['StudentName'] . ",    Roll No : " . $row['RollId'] . ",    Class ID : " . $row['ClassId'] . "<br>";
	echo "Subject : " . $row['SubjectName'] . ",    Marks : " . $row['marks'] . "<br>";
	while($row = $result->fetch_assoc()) {
		//echo "Student Name : " . $row['StudentName'] . ",    Roll No : " . $row['RollId'] . ",    Class ID : " . $row['ClassId'] . ",    Subject : " . $row['SubjectName'] . ",    Marks : " . $row['marks'] . "<br>";
		echo "Subject : " . $row['SubjectName'] . ",    Marks : " . $row['marks'] . "<br>";

	}
}
  

//$conn->close();
?>
