<?php
	include('init.php');
    include('session.php');

        if($_SERVER['REQUEST_METHOD'] == 'POST'){
        $id = $_POST['ClassId'];
        $classname = $_POST['ClassName'];
        $sec = $_POST['Section'];
    }
            // validation
        if (empty($classname) or empty($id) or empty($sec)) {
            if(empty($classname))
                echo '<p class="error">Please enter class</p>';
            if(empty($id))
                echo '<p class="error">Please enter class id</p>';
            if(empty($sec))
                echo '<p class="error">Please enter class id</p>';
            exit();
        }

        $sql = "INSERT INTO `tblclasses` (`ClassId`, `ClassName`, `Section`) VALUES ('$id', '$classname', '$sec');";
        
        if ($conn->query($sql) === TRUE) {
        echo "New record created successfully!";
        } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
        }
?>