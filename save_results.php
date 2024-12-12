<?php
// Enable error reporting for debugging
error_reporting(E_ALL);
ini_set('display_errors', 1);

// Include the database connection file
include('db.php'); // Adjust the path to where db.php is located

// Get the raw input data
$raw_data = file_get_contents('php://input');

// Log the raw data for debugging
error_log("Raw Input Data: " . $raw_data);

// Decode the JSON data
$data = json_decode($raw_data, true);

// Check if data is null or missing required fields
if ($data === null || !isset($data['user_id'], $data['total_score'], $data['percentage'], $data['disability_level'], $data['date'])) {
    echo json_encode(["success" => false, "error" => "Invalid input data", "raw_data" => $raw_data]);
    exit;
}

// Extract the values from the decoded data
$user_id = $data['user_id'];
$total_score = $data['total_score'];
$percentage = $data['percentage'];
$disability_level = $data['disability_level'];
$date = $data['date']; // Get the date from the request

// Prepare the SQL statement with the date included
$sql = "INSERT INTO user_results (user_id, total_score, percentage, disability_level, date) 
        VALUES ('$user_id', '$total_score', '$percentage', '$disability_level', '$date')";

// Execute the query and check for success
if (mysqli_query($conn, $sql)) {
    echo json_encode(["success" => true]);
} else {
    echo json_encode(["success" => false, "error" => mysqli_error($conn)]);
}

// Close the connection
mysqli_close($conn);
?>
