<?php
/*
$dbconn = pg_connect("host=localhost port=5432 dbname=art_db user=postgres password=962603");
$result = pg_query($dbconn, "CREATE TYPE countryType AS
( countryID INTEGER, 
  countryName VARCHAR(40),
  countryCode VARCHAR(40)
);");

print_r($result);*/

 

 
require_once('Connection.php');
require_once('PostgreSQLCreateTable.php');
 
try {
    
    // connect to the PostgreSQL database
    $pdo = Connection::get()->connect();
    
    // 
    $tableCreator = new PostgreSQLCreateTable($pdo);
    
    // create tables and query the table from the
    // database
$tableCreator->createTables();
    $tables = $tableCreator->getTables();
    $types = $tableCreator->getType();

  
echo 'tables<br>';
 foreach ($tables as $table){
        echo $table . '<br>';
    }
echo '<br>types<br>';
  foreach ($types as $type){
        echo $type . '<br>';
    }
    
} catch (\PDOException $e) {
    echo $e->getMessage();
}



?>
