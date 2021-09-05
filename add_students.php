<?php
	include('init.php');
    include('session.php');

        if($_SERVER['REQUEST_METHOD'] == 'POST'){
        $sid = $_POST['StudentId'];
        $sname = $_POST['StudentName'];
        $rollid = $_POST['RollId'];
        $classid = $_POST['ClassId'];
    }
    $sql = "INSERT INTO `tblstudents` (`StudentId`, `StudentName`, `RollId`, `ClassId`) VALUES ('$sid', '$sname', '$rollid', '$classid');";

    if ($conn->query($sql) === TRUE) {
    echo "New record created successfully!";
    } else {
    echo "Error: " . $sql . "<br>" . $conn->error;
    }

?>