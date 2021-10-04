<?php

require_once __DIR__ . '/GetConnection.php';

$connection = getConnection();

$sql = <<<SQL
    SELECT * FROM certification;
SQL;

$result = $connection->prepare($sql);
$result->execute();

while($row = $result->fetch(PDO::FETCH_ASSOC)) {
    if($row['id'] %3 == 1 ) {
        echo "<div class='row justify-content-center'> </div>";
    }         
        echo "<div class='col-sm-4 me-auto pb-5'>";
        echo "<img src='http://localhost:8055/assets/".$row['image']."' class='card-img-top' alt='...' style='width: 50% !important;background-color: #FFE8C8;border-radius: 15px;'>";
        echo "<div class='card-body' style='background-color: white; margin-left: 20%; border-radius: 15px; width: 60%;'>";
        echo "<h6 class='card-title' style='color:black; text-align: center; width: auto;'> ".$row['title']." </h6> </div> </div>";
} 