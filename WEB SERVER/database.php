<?php
$servername = "mysql.hostinger.in";
$username = "u210302564_ybv";
$password = "ybv2016";
$dbname = "u210302564_park";

$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 
?>