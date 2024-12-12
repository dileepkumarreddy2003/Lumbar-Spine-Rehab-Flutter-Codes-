<?php
header('Content-Type: application/json');

// Include the database connection
include 'db.php';

// SQL query to fetch doctor IDs
$sql = "SELECT docid FROM signup"; // Adjust table and column names as per your database
$result = $conn->query($sql);

$docids = []; // Initialize an array to store doctor IDs

// Check if the query returned any rows
if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $docids[] = $row['docid']; // Add each doctor ID to the array
    }
}

// Output the result as a JSON array
echo json_encode($docids);

// Close the database connection
$conn->close();
?>
