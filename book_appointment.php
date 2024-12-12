<?php
header('Content-Type: application/json');

// Include the database configuration file
include 'db.php';

// Check if the connection is successful
if ($conn->connect_error) {
    die(json_encode(['success' => false, 'message' => 'Database connection failed']));
}

// Retrieve POST data
$date = $_POST['date'];
$time = $_POST['time'];
$pid = $_POST['pid'];
$did = $_POST['did'];
$status = 'pending';

// Insert query
$sql = "INSERT INTO appt (date, time, pid, did, status) VALUES (?, ?, ?, ?, ?)";
$stmt = $conn->prepare($sql);
$stmt->bind_param('sssss', $date, $time, $pid, $did, $status);

if ($stmt->execute()) {
    echo json_encode(['success' => true, 'message' => 'Appointment booked successfully']);
} else {
    echo json_encode(['success' => false, 'message' => 'Failed to book appointment']);
}

$stmt->close();
$conn->close();
?>
