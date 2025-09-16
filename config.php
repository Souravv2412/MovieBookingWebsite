<?php
    $host = "movietheatredb-singh-f06c.d.aivencloud.com";
    $user = "avnadmin";                     
    $pass = "AVNS_eMsllQY_b9oaug9NZiT";                                  
    $db = "defaultdb";
    $port = 27000;
     $con = mysqli_connect($host, $user, $pass, $db, $port)or die(mysql_error());

     if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
echo "Connected successfully";
?>

