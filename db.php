<?php
// Database connection parameters
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "lumberspine";

// Base URL for images
$baseUrl = "http://180.235.121.245/lumbarspine/";

// Create a connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check the connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
?>
