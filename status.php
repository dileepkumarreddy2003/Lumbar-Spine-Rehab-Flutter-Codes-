<?php
header('Content-Type: application/json');

// Include the database connection file
include('db.php'); // Ensure the correct path to db.php

// Decode the JSON input and check if required fields exist
$data = json_decode(file_get_contents('php://input'), true);

if (!isset($data['pid'], $data['status'], $data['doctorId'])) {
    echo json_encode(['success' => false, 'error' => 'Missing parameters']);
    exit;
}

$pid = $data['pid'];
$status = $data['status'];
$doctorId = $data['doctorId'];

// Ensure the query targets only the specific appointment of the patient and doctor
$sql = "UPDATE appt SET status = ? WHERE pid = ? AND did = ?";
$stmt = $conn->prepare($sql);

if (!$stmt) {
    echo json_encode(['success' => false, 'error' => $conn->error]);
    exit;
}

$stmt->bind_param("ssi", $status, $pid, $doctorId);

if ($stmt->execute()) {
    // Return the updated appointment status
    echo json_encode(['success' => true, 'updatedStatus' => $status]);
} else {
    echo json_encode(['success' => false, 'error' => $stmt->error]);
}

$stmt->close();
$conn->close();
?>
