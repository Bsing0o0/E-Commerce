<?php 
 include 'connection.php';

 $insert ="";
 $result = mysqli_query($conn, $insert);
 if ($result) {
 	echo 'inserted';
 }
?>