<?php
//ltl@2018
$conn=new mysqli("localhost", "root", "","LRTs_Apps");
// Change character set to utf8
mysqli_set_charset($conn,"utf8");
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 




?>