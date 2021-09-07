<?php
	include('init.php');
    include('session.php');

        if($_SERVER['REQUEST_METHOD'] == 'POST'){
        $subid = $_POST['SubjectId'];
        $subname = $_POST['SubjectName'];
    }
    $sql = "UPDATE `tblsubjects` SET `SubjectName` = '$subname' WHERE `tblsubjects`.`SubjectId` = '$subid'";
    
    if ($conn->query($sql) === TRUE) {
    echo "Record updated successfully!";
    } else {
    echo "Error: " . $sql . "<br>" . $conn->error;
    }

?>