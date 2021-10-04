<?php

require_once __DIR__ . '/GetConnection.php';

$connection = getConnection();

$sql = <<<SQL
    SELECT * FROM experience;
SQL;

$result = $connection->prepare($sql);
$result->execute();

while($row = $result->fetch(PDO::FETCH_ASSOC)) {
    if($row['id'] %4 == 1 ) {
        echo '<div class="row">';
    } 
        echo "<div class='col-sm-6 col-md-6 col-xl-3 mt-3'>";
        echo "<div class='card h-100 shadow p-3 mb-5 rounded border-0'>";
        echo "<img src='http://localhost:8055/assets/".$row['image']."' class='card-img-top mx-auto' alt='...' style='width: 50% !important;'>";
        
        // echo "<img src='loadImage.php' class='card-img-top mx-auto' alt='...' style='width: 50% !important;'>";
        echo "<div class='card-body'>";
        echo "<h5 class='card-title' style='color:black'>".$row['title']."</h5>";
        echo "<p class='card-text'>".$row['description']."</p> </div> </div> </div>";
} 
