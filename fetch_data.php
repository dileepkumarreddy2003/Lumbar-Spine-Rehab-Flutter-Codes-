<?php
header('Content-Type: application/json');

// Include database connection
include 'db.php';

// Validate input
if (!isset($_GET['doctorId'])) {
    echo json_encode(["success" => false, "message" => "Doctor ID is required"]);
    exit;
}

// Get the doctor ID
$doctorId = intval($_GET['doctorId']);

// Prepare the SQL statement
$sql = "SELECT * FROM patient WHERE doctorId = ?";
$stmt = $conn->prepare($sql);
$stmt->bind_param("i", $doctorId);

// Execute the statement and fetch results
if ($stmt->execute()) {
    $result = $stmt->get_result();
    $patients = [];

    while ($row = $result->fetch_assoc()) {
        $patients[] = $row;
    }

    echo json_encode(["success" => true, "data" => $patients]);
} else {
    echo json_encode(["success" => false, "message" => "Failed to retrieve patients", "error" => $stmt->error]);
}

// Close the statement and connection
$stmt->close();
$conn->close();
?>
