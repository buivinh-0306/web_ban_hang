<?php 
	$servername = "localhost:3306";
	$username   = "root";
	$password   = "";
	$database   = "rog_web";

	$conn = new mysqli( $servername, $username, $password,$database);
	mysqli_set_charset($conn,'UTF8');
	if(mysqli_connect_error()){
		// echo "error";
		mysqli_connect_error();
		exit();
	}
	else{
		// echo'success';
	}


?>