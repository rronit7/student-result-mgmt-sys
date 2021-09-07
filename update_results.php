<?php
	include('init.php');
    include('session.php');

        if($_SERVER['REQUEST_METHOD'] == 'POST'){
        $sid = $_POST['StudentId'];
        $classid = $_POST['ClassId'];
        $subid = $_POST['SubjectId'];
        $marks = $_POST['Marks'];
        
    }
    $sql = "UPDATE `tblresult` SET `Marks` = '$marks' WHERE `tblresult`.`SubjectId` = '$subid'";
    
    if ($conn->query($sql) === TRUE) {
    echo "Record updated successfully!";
    } else {
    echo "Error: " . $sql . "<br>" . $conn->error;
    }
?>