<?php
// Include the database configuration file
include('db.php'); // Adjust the path if necessary

// Get the doctorId from the GET request
$doctorId = $_GET['doctorId'];

// SQL query
$sql = "SELECT userId, name, image FROM logs1 WHERE doctorId = ?";
$stmt = $conn->prepare($sql);

if ($stmt) {
    $stmt->bind_param("s", $doctorId);
    $stmt->execute();
    $result = $stmt->get_result();

    $patients = array();

    // Fetch data and prepend base URL to image paths
    while ($row = $result->fetch_assoc()) {
        $row['image'] = $baseUrl . $row['image']; // Use baseUrl from db.php
        $patients[] = $row;
    }

    // Output data in JSON format
    header('Content-Type: application/json');
    echo json_encode($patients);

    // Close the statement
    $stmt->close();
} else {
    echo json_encode(['success' => false, 'error' => 'Failed to prepare statement']);
}

// Close the database connection
$conn->close();
?>