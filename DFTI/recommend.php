<?php
echo "<link rel='stylesheet' href='stylesheet.css'>";
$conn = new PDO ("mysql:host=localhost;dbname=assign246;", "assign246", "coefoase");
$id = $_GET["ID"];
 $statement = $conn->prepare ("UPDATE pointsofinterest SET recommended=recommended+1 WHERE ID=? ");
 $statement->execute([$id]);
echo "<p>Thank you! This region has been added to recommended</p><br />";
echo "<p><a href='hotspot.html'> Back to Home  Page</a></p>";

?> 