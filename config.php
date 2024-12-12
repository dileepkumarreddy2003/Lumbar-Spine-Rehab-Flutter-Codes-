<?php

// Database connection details
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "lumbarspine";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    echo json_encode(["success" => false, "message" => "Connection failed: " . $conn->connect_error]);
    exit();
}


?>