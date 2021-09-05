<?php
   session_start();
   
   if(session_destroy()) {
        header("Location: LoginPage.html");
        echo '<script language="javascript">';
        echo 'alert("Logout successful")';
        echo '</script>';

   }
?>