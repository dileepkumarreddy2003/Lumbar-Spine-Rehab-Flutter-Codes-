<?php
// Include database connection
include 'db.php';

// Get the posted data
$data = json_decode(file_get_contents("php://input"), true);

// Validate input
if (!isset($data['doctorId'], $data['password'])) {
    echo json_encode(["success" => false, "message" => "Missing doctor ID or password"]);
    exit;
}

// Extract data
$doctorId = $data['doctorId'];
$password = $data['password'];

// Prepare the SQL statement to prevent SQL injection
$stmt = $conn->prepare("SELECT * FROM signup WHERE docid = ? AND pass = ?");
$stmt->bind_param("ss", $doctorId, $password);

// Execute the statement
$stmt->execute();

// Get the result
$result = $stmt->get_result();

// Set response header to JSON
header('Content-Type: application/json');

if ($result->num_rows > 0) {
    // Credentials are correct
    echo json_encode(["success" => true, "message" => "Login successful"]);
} else {
    // Credentials are incorrect
    echo json_encode(["success" => false, "message" => "Invalid doctor ID or password"]);
}

// Close the statement and connection
$stmt->close();
$conn->close();
?>
