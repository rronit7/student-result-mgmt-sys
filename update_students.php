<?php
	include('init.php');
    include('session.php');

        if($_SERVER['REQUEST_METHOD'] == 'POST'){
        $sid = $_POST['StudentId'];
        $sname = $_POST['StudentName'];
        $rollid = $_POST['RollId'];
        $classid = $_POST['ClassId'];
    }
    $sql = "UPDATE `tblstudents` SET `StudentName` = '$sname' WHERE `tblstudents`.`StudentId` = '$sid'";

    if ($conn->query($sql) === TRUE) {
    echo "Record updated successfully!";
    } else {
    echo "Error: " . $sql . "<br>" . $conn->error;
    }

?>