<?php

$dbconn = pg_connect("host=localhost port=5432 dbname=art_db user=postgres password=962603");
$result = pg_query($dbconn, "INSERT INTO account3 (user_id,username) VALUES (4,'Armin4');");
$result = pg_query($dbconn, "SELECT*FROM account3;");
echo "<table>\n";
while ($line = pg_fetch_array($result, null, PGSQL_ASSOC)) {
    echo "\t<tr>\n";
    foreach ($line as $col_value) {
        echo "\t\t<td>$col_value</td>\n";
    }
    echo "\t</tr>\n";
}
echo "</table>\n";



?>
