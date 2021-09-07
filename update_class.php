<?php
	include('init.php');
    include('session.php');

        
        $id = $_POST['ClassId'];
        $classname = $_POST['ClassName'];
        $sec = $_POST['Section'];
        
        
        $sql = "UPDATE `tblclasses` SET `ClassName` = '$classname', `Section` = '$sec' WHERE `tblclasses`.`ClassId` = '$id'";
        
        if ($conn->query($sql) === TRUE) {
        echo "Record modified successfully!";
        } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
        }
?>