<?php
	include('init.php');
    include('session.php');

        if($_SERVER['REQUEST_METHOD'] == 'POST'){
        $subid = $_POST['SubjectId'];
        $subname = $_POST['SubjectName'];
    }
    $sql = "INSERT INTO `tblsubjects` (`SubjectId`, `SubjectName`) VALUES ('$subid', '$subname');";
    
    if ($conn->query($sql) === TRUE) {
    echo "New record created successfully!";
    } else {
    echo "Error: " . $sql . "<br>" . $conn->error;
    }

?>