<?php

$servername = "localhost";
$username = "id17166520_mufi";
$password = "gHu)7Bm2!I?bzRGQ";
$database = "id17166520_mydatabase";

// Create connection
$conn = mysqli_connect($servername, $username, $password, $database);

// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}


header("Access-Control-Allow-Origin: *");
?>