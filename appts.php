<?php
// Include the database configuration file
include 'db.php';

// Check if the connection is successful
if ($conn->connect_error) {
    die('Connection failed: ' . $conn->connect_error);
}

// Get doctorId from request parameters
$doctorId = isset($_GET['doctorId']) ? intval($_GET['doctorId']) : 0;

$sql = 'SELECT pid, date, time FROM appt WHERE did = ?';
$stmt = $conn->prepare($sql);
$stmt->bind_param('i', $doctorId);
$stmt->execute();
$result = $stmt->get_result();

$appointments = [];

if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $appointments[] = $row;
    }
}

echo json_encode($appointments);

$stmt->close();
$conn->close();
?>
