<?php
header('Content-Type: application/json');

$doctorId = $_GET['doctorId'];

include 'db.php';

// Prepare and execute SQL query
$sql = "SELECT pid, date, time, status FROM appt WHERE did = ?";
$stmt = $conn->prepare($sql);
$stmt->bind_param("i", $doctorId);
$stmt->execute();
$result = $stmt->get_result();

// Fetch data
$appointments = array();
while ($row = $result->fetch_assoc()) {
    $appointments[] = $row;
}

// Close connection
$stmt->close();
$conn->close();

// Output data as JSON
echo json_encode($appointments);
?>
