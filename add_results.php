<?php
	include('init.php');
    include('session.php');

        if($_SERVER['REQUEST_METHOD'] == 'POST'){
        $sid = $_POST['StudentId'];
        $classid = $_POST['ClassId'];
        $subid = $_POST['SubjectId'];
        $marks = $_POST['Marks'];
        
    }
    $sql = "INSERT INTO `tblresult` (`StudentId`, `ClassId`, `SubjectId`, `Marks`) VALUES ('$sid', '$classid', '$subid', '$marks');";
    
    if ($conn->query($sql) === TRUE) {
    echo "New record created successfully!";
    } else {
    echo "Error: " . $sql . "<br>" . $conn->error;
    }
?>