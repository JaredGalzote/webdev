<?php
	$dbhost	= "localhost";
	$dbuser = "root";
	$dbpass = "1234abcd";
	$dbname = "examime";

	$connection = mysqli_connect($dbhost,$dbuser,$dbpass,$dbname);

	if(mysqli_connect_errno()){ 
		die("Database Connection Failed" . mysqli_connect_error() . "(" . mysqli_connect_errno() . ")");
	}

?>