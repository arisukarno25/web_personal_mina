<?php

require_once __DIR__ . '/GetConnection.php';

$connection = getConnection();

$sql = <<<SQL
    SELECT * FROM project WHERE category = 1;
SQL;

$result = $connection->prepare($sql);
$result->execute();

while($row = $result->fetch(PDO::FETCH_ASSOC)) {
    if($row['id'] %3 == 1 ) {
        echo "<div class='row'>";
    } 
        echo "<div class='col-sm-4 col-md-4 col-xl-4 mt-3'>";
        echo "<div class='card h-100 shadow p-3 mb-5 rounded border-0'>";
        echo "<img src='http://localhost:8055/assets/".$row['image']."' class='card-img-top' alt=''...' style='width: 75% !important;margin: auto;'>";
        echo "<div class='card-body'>";
        echo "<h4 class='card-title' style='color:black;text-align: left;''>".$row['title']."</h4>";
        echo "<p class='card-text'>".$row['description']."</p> </div> </div> </div>";
} 