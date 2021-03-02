<?php
echo "<link rel='stylesheet' href='stylesheet.css'>";
$a= $_GET["ID"];
$conn = new PDO ("mysql:host=localhost;dbname=assign246;", "assign246", "coefoase");
 $statement = $conn->prepare("select * from poi_reviews where poi_id=?");
 $statement->execute([$a]);
try {
    while($row=$statement->fetch(PDO::FETCH_ASSOC))
    {
        echo "<p>";
        echo " Reviews For This POI:". $row["review"] ."<br/> ";
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