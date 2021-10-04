<?php

require_once __DIR__ . '/GetConnection.php';

$connection = getConnection();

$sql = <<<SQL
    SELECT content FROM summary;
SQL;
foreach ($connection->query($sql) as $row) {
    echo $row['content'] . "\n";
}

$connection->exec($sql);

$connection = null;