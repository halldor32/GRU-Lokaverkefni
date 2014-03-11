<?php
	
	$query1 = "SELECT name FROM genre";


 	$result = $pdo->query($query1);

 	$query2 = "SELECT * FROM movies";

 	$result2 = $pdo->query($query2);

 	//$queryLogin = "SELECT username, password FROM user WHERE username = '$username' AND password = '$password'";

 	// $insert = 'INSERT INTO user (first_name,last_name,username,password) VALUES (:first_name,:last_name,:username,:password)';
?>