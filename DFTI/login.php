<?php
echo "<link rel='stylesheet' href='stylesheet.css'>";
session_start();
$un = $_POST["username"];
$pw = $_POST["password"];
$conn = new PDO ("mysql:host=localhost;dbname=assign246;", "assign246", "coefoase");
$statement = $conn->prepare("select * from poi_users where username=? and password=?");
$statement->execute([$un, $pw]);
$row = $statement->fetch();
if ($row != false)
     {
		$_SESSION["gatekeeper"] =  $row["username"];
		header ("Location: hotspot.html"); 
	 }
else {
	    echo "Invalid login!";
     }

?> 