<?php

require_once __DIR__ . '/GetConnection.php';

$connection = getConnection();

$sql = <<<SQL
    SELECT * FROM project WHERE category = 2;
SQL;

$result = $connection->prepare($sql);
$result->execute();

while($row = $result->fetch(PDO::FETCH_ASSOC)) {
    if($row['id'] %2 == 1 ) {
        echo "<div class='row'>";
    } 
        echo "<div class='col-sm-6 mt-3'>";
        echo "<div class='card h-100 shadow p-3 mb-5 rounded border-0'>";
        echo  "<div class='row'>";
        echo "<div class='col-6'>";
        echo "<div class='card-body '>";
        echo "<h6 class='card-title' style='color:black;font-size: 16px;text-align: left;'>".$row['title']." </h6>";
        echo "<p class='card-text' style='font-size: 13px;text-align: left;'> ".$row['description']."</p> </div> </div> <div class='col-6'>";
        echo "<img src='http://localhost:8055/assets/".$row['image']."' class='card-img-top' style='width: 100% !important;padding-top: 5%;' alt='...''> </div> </div> </div> </div>";
} 