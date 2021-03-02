<?php 
echo "<link rel='stylesheet' href='stylesheet.css'>";
$a= $_POST["username"];
$b= $_POST["name"];
$c= $_POST["type"];
$d= $_POST["region"];
$e= $_POST["description"];

$conn = new PDO ("mysql:host=localhost;dbname=assign246;", "assign246", "coefoase");
$statement = $conn->prepare("INSERT INTO pointsofinterest (username, name, type, region, description) VALUES (?, ?, ?, ?, ?)");
$statement->execute([$a, $b, $c, $d, $e]);
echo "<h5> You have added a point of interest with the following details: <br> Name: $b, <br> Username: $a, <br> Type: $c, <br> Region: $d, <br> description: $e </h5>";
echo "<p><a href='hotspot.html'> Back to Home Page</a></p>";
?>