<?php
// byrjar session
session_start();
//error_reporting(0);

require 'dbcon/dbcon.php';
require 'functions/movies.php';
require 'functions/general.php';
require 'functions/users.php';
// require 'functions/jRating.php';

// nær í upplýsingar um notandann ef notandi er skráður inn
if (logged_in() === true) {
	$session_user_id = $_SESSION['userID'];
	$user_data = user_data($session_user_id, 'userID', 'username', 'password', 'first_name', 'last_name');
}

// nær í upplýsingar um kvikmyndina ef það hefur id af henni
if (movie_isset() === true) {
	$get_movie_id = $_GET['movieID'];
	//$movie_data = movie_data($get_movie_id, 'movieID', 'name', 'genreID', 'rating', 'directorID', 'imageID', 'year', 'info');
	$movie_data = legit_movie_data($get_movie_id, $pdo);
	//echo $movie_data['image'];
}
	
$errors = array();
 ?>