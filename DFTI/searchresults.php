<?php
echo "<link rel='stylesheet' href='stylesheet.css'>";
$a= $_GET["search"];
$conn = new PDO ("mysql:host=localhost;dbname=assign246;", "assign246", "coefoase");
 $statement = $conn->prepare("select * from pointsofinterest where region=?");
 $statement->execute([$a]);
try {
    while($row=$statement->fetch(PDO::FETCH_ASSOC))
    {
        echo "<h3>Point of Interest</h3>";
		echo "<p>";
		echo "<br>";
		echo " Name:". $row["name"] ."<br/> ";
		echo "<br>";
	    echo " Type of Place:". $row["type"] ."<br/> ";
		echo "<br>";
		echo " Region:". $row["region"] ."<br/> ";
		echo "<br>";
        echo " Country:". $row["country"] ."<br/> ";
		echo "<br>";
		echo " Description:". $row["description"] ."<br/> ";
		echo "<br>";
		echo "<a href='recommend.php?ID=" . $row["ID"]  . "'>Recommend This Region</a>";
		echo "<br>";
		echo "<a href='review.php?ID=" . $row["ID"]  . "'>Check Reviews</a>";
		echo "</p>";

    }
}
// Catch any exceptions (errors) thrown from the 'try' block
catch(PDOException $e) 
{
    echo "Error: $e";
}
echo "<p><a href='hotspot.html'> Back to Home  Page</a></p>";
?> 